# Code generated by protoc-gen-liquibase. DO NOT EDIT.
FROM liquibase/liquibase:4.18.0
COPY drop_all.sh /entry.sh
ENTRYPOINT ["/entry.sh"]
