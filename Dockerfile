# Code generated by protoc-gen-liquibase. DO NOT EDIT.
FROM liquibase/liquibase:4.33.0
COPY drop_all.sh /entry.sh
ENTRYPOINT ["/entry.sh"]
