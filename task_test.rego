package task

import future.keywords.contains
import future.keywords.if
import future.keywords.in

test_allow_admin {
    allow with input as {
        "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkFsaWNlIiwiaWF0IjoxNTE2MjM5MDIyLCJyZXNvdXJjZSI6eyJ0eXBlIjoic2hvdyIsInNjb3BlIjoicmF0ZSJ9fQ.YYR7DU3xbZgeA6-yCJ6gU0LWNOgFDGO2D7ZNP149_wY"
    }
}

test_allow_correct_role_and_permission{
    allow with input as {
        "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkJvYiIsImlhdCI6MTUxNjIzOTAyMiwicmVzb3VyY2UiOnsidHlwZSI6InNob3ciLCJzY29wZSI6InJldmlldyJ9fQ.qtUe4MUe3T2985w2A-vz44hwT99PlNj06za26S89M98"
    }
}

test_not_allow_incorrect_role_and_permission{
    not allow with input as {
        "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkV2ZSIsImlhdCI6MTUxNjIzOTAyMiwicmVzb3VyY2UiOnsidHlwZSI6InNob3ciLCJzY29wZSI6InJldmlldyJ9fQ.Sd-zvF8zs2TC6ctw0M4WHqByrpqN9BuHuiZKQ_MIzF0"
    }
}

test_not_allow_correct_role_and_incorrect_permission{
    not allow with input as {
        "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkJvYiIsImlhdCI6MTUxNjIzOTAyMiwicmVzb3VyY2UiOnsidHlwZSI6ImNvbW1lbnQiLCJzY29wZSI6InJlbW92ZSJ9fQ.AHv9wEn_XvimOZhi2li_0rNfNdifgVFCCXCVNPoceZU"
    }
}

test_not_allow_correct_role_and_incorrect_type{
    not allow with input as {
        "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkRhcnRoIiwiaWF0IjoxNTE2MjM5MDIyLCJyZXNvdXJjZSI6eyJ0eXBlIjoibWFuZ2EiLCJzY29wZSI6InJlbW92ZSJ9fQ.506l7yDP7olk4wZvvuxTms19ewdkFrhFC_Im5XeZlLM"
    }
}

