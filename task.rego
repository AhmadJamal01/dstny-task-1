# an RBAC model for a show-ratings website like myAnimeList
package task

import future.keywords.contains
import future.keywords.if
import future.keywords.in

# by default do not allow any action
default allow := false

# header,payload,signature = io.jwt.decode(input.token)
token = io.jwt.decode(input.token)
payload := token[1]

# allow any action if the user is an admin
allow if "admin" in data.roles[payload.name]

# or allow an action if
allow {
    # for any of the available permits (objects that have resource as key)
    some permit in permit_resource

    # the input action matches the resource's scope
    payload.resource.scope == permit.resource.scope
    # and the input type matches the resource's type
    payload.resource.type == permit.resource.type
}

# permit resoure is a set containing permit (object containing resource) if for any permit
permit_resource contains permit if {
    # the user is registered in the data with a valid role 
    some role in data.roles[payload.name]
    # and permit will be any of the objects containing the key resource
    some permit in data.permissions[role]
}
