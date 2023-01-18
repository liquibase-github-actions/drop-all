# Liquibase Drop All Action
Official GitHub Action to run Liquibase Drop All in your GitHub Action Workflow. For more information on how drop all works visit the [Official Liquibase Documentation](https://docs.liquibase.com/commands/home.html).
## Drop All
Drop all database objects owned by the user
## Usage
```yaml
steps:
- uses: actions/checkout@v3
- uses: liquibase-github-actions/drop-all@v4.19.0
  with:
    # The JDBC database connection URL
    # string
    # Required
    url: ""

    # The root changelog
    # string
    # Optional
    changelogFile: ""

    # The default catalog name to use for the database connection
    # string
    # Optional
    defaultCatalogName: ""

    # The default schema name to use for the database connection
    # string
    # Optional
    defaultSchemaName: ""

    # The JDBC driver class
    # string
    # Optional
    driver: ""

    # The JDBC driver properties file
    # string
    # Optional
    driverPropertiesFile: ""

    # Used to identify the specific Connection in which to record or extract data at Liquibase Hub. Available in your Liquibase Hub Project at https://hub.liquibase.com.
    # string
    # Optional
    hubConnectionId: ""

    # Used to identify the specific Project in which to record at Liquibase Hub. Available in your Liquibase Hub account at https://hub.liquibase.com.
    # string
    # Optional
    hubProjectId: ""

    # Password to use to connect to the database
    # string
    # Optional
    password: ""

    # Schemas to include in drop
    # string
    # Optional
    schemas: ""

    # Username to use to connect to the database
    # string
    # Optional
    username: ""

```

### Secrets
It is a good practice to protect your database credentials with [GitHub Secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets)

## Optional Liquibase Global Inputs
The liquibase drop all action accepts all valid liquibase global options as optional parameters. A full list is available in the official [Liquibase Documentation](https://docs.liquibase.com/parameters/command-parameters.html).

### Example
```yaml
steps:
  - uses: actions/checkout@v3
  - uses: liquibase-github-actions/drop-all@v4.19.0
    with:
      url: ""
      headless: true
      licenseKey: ${{ secrets.LIQUIBASE_LICENSE_KEY }}
      logLevel: INFO
```

## Feedback and Issues
This action is automatically generated. Please submit all feedback and issues with the [generator repository](https://github.com/liquibase/github-action-generator/issues).
