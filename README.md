# Liquibase Drop All Action
Official GitHub Action to run Liquibase Drop All in your GitHub Action Workflow. For more information on how drop all works visit the [Official Liquibase Documentation](https://docs.liquibase.com/commands/home.html).
## Drop All
Drop all database objects owned by the user
## Usage
```yaml
steps:
- uses: actions/checkout@v3
- uses: liquibase-github-actions/drop-all@v4.29.1
  with:
    # The JDBC database connection URL
    # string
    # Required
    url: ""

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

    # [PRO] If true, the database changelog history table will be dropped
    # bool
    # Optional
    dropDbclhistory: ""

    # Argument to allow use of dropAll with values of "true" or "false". The default is "false".
    # bool
    # Optional
    force: ""

    # Password to use to connect to the database
    # string
    # Optional
    password: ""

    # Argument to require user of dropAll to supply a "force" argument, with values of "true" or "false". The default is "false".
    # bool
    # Optional
    requireForce: ""

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
  - uses: liquibase-github-actions/drop-all@v4.29.1
    with:
      url: ""
      headless: true
      licenseKey: ${{ secrets.LIQUIBASE_LICENSE_KEY }}
      logLevel: INFO
```

## Feedback and Issues
This action is automatically generated. Please submit all feedback and issues with the [generator repository](https://github.com/liquibase/github-action-generator/issues).
