# Code generated by protoc-gen-liquibase. DO NOT EDIT.
FROM liquibase/liquibase:4.29.1
COPY drop_all.sh /entry.sh
ENTRYPOINT ["/entry.sh"]
