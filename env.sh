#!/bin/bash
source .secrets

# LDAP

export LDAP_SERVER="ldap:389"
export LDAP_DOMAIN="ldap.example.com"
export LDAP_FULL_DOMAIN="dc=ldap,dc=example,dc=com"
export LDAP_USER_BASE_DN="ou=people"
export LDAP_GROUP_BASE_DN="ou=groups"
export LDAP_USER_SEARCH="uid={0}"
export LDAP_ADMIN="cn=admin"
export LDAP_ACCOUNTPATTERN='(cn=${username})'
export LDAP_ACCOUNTFULLNAME='${cn}'
export LDAP_GROUPPATTERN='(cn=${groupname})'
export LDAP_GROUPMEMBERPATTERN='(uniqueMember=${dn})'
export LDAP_MANAGER_DN="cn=admin,dc=ldap,dc=example,dc=com"
export LDAP_GROUP_NAME_ADMIN="administrators"

