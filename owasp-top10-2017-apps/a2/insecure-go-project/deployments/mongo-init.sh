#!/bin/bash

mongo << EOF
var db = connect("mongodb://localhost/insecure_go_project");

db.createUser(
    {
        user: "$MONGO_USER",
        pwd: "$MONGO_PASS",
        roles: [{ role: "userAdminAnyDatabase", db: "admin" }]
    }
);
EOF
