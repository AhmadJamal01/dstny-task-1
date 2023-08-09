package task

import future.keywords.contains
import future.keywords.if
import future.keywords.in

test_allow_admin {
    allow with input as {
        "user": "Alice",
        "action": "review",
        "type": "show"
    }
}

test_allow_correct_role_and_permission{
    allow with input as {
        "user": "Bob",
        "action": "review",
        "type": "show"
    }
}

test_not_allow_incorrect_role_and_permission{
    not allow with input as {
        "user": "Eve",
        "action": "review",
        "type": "show"
    }
}

test_not_allow_correct_role_and_incorrect_permission{
    not allow with input as {
        "user": "Bob",
        "action": "remove",
        "type": "comment"
    }
}

test_not_allow_correct_role_and_incorrect_type{
    not allow with input as {
        "user": "Darth",
        "action": "remove",
        "type": "manga"
    }
}

