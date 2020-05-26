# Analysis

## Terms

- Managing: Adding, editing, deleting
- Pipeline: A set of tasks defined in ETL LinkedPipes server instance
- Server instance: [ETL LinkedPipes](https://etl.linkedpipes.com/) server instance
- User: Common user of the android application
- History: History of pipeline executions


## Requirements
### High level functional

1. Pipeline managing
2. Executing pipelines
3. Pipeline history
4. Managing server instances

### Functional

| Code  | Shortcut                          | Requirement                                                                                                                                                                  | Priority | Dependency   | Notes |
|-------|-----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:--------:|--------------|-------|
| F-1.1 | Settings screen                   | Application must have a separate screen for settings.                                                                                                                        |   Must   |              |       |
| F-1.2 | Pipeline list screen              | Application must have a separate screen for listing all pipelines.                                                                                                           |   Must   |              |       |
| F-1.3 | Execution history screen          | Application must have a separate screen for execution history.                                                                                                               |   Must   |              |       |
| F-1.4 | Edit pipeline activity            | Application must have a activity for maintaining pipelines.                                                                                                                  |   Must   |              |       |
| F-2.1 | View server instance              | List of server instances will be visible from settings screen.                                                                                                               |   Must   | F-1.1        |       |
| F-2.2 | Add server instance               | User clicks on add server button to initialize add activity or add dialog to enter instance info and then clicks on save button in order to add server instance to the list. |   Must   | F-1.1        |       |
| F-2.3 | Edit server instance              | When user clicks on an item from server instance list, the edit dialog or edit activity will be launched. User can make changes and then click on save or cancel.            |   Must   | F-1.1, F-2.1 |       |
| F-2.4 | Delete server instance            | Every item from server instance list will have it's own delete button. When user click on it or long clicks on the item, the delete confirmation dialog will be initialized. |   Must   | F-1.1, F-2.1 |       |
| F-3.1 | Notification after finish         | Application shell create notification on pipeline finish.                                                                                                                    |   Could  |              |       |
| F-3.2 | Notifications in settings         | There will be switch in settings to toggle notifications.                                                                                                                    |   Could  | F-1.1, F-3.1 |       |
| F-4.1 | View pipelines                    | List of pipelines will be visible from pipeline list screen.                                                                                                                 |   Must   | F-1.2        |       |
| F-4.2 | Create pipelines                  | User clicks on create pipeline button to start an empty edit pipeline activity.                                                                                              |   Must   | F-1.2        |       |
| F-4.3 | Edit existing pipelines           | When user clicks on a pipeline, the edit pipeline activity is started with the selected activity                                                                             |   Must   | F-1.2, F-4.1 |       |
| F-4.4 | Delete pipelines                  | Every pipeline will have it's own delete button. When user clicks on it or long clicks on a pipeline, the delete dialog is initialized                                       |   Must   | F-1.2, F-4.1 |       |
| F-4.5 | Execute pipeline                  | Every pipeline will have it's own execute button. When user click on it, the pipeline will execute.                                                                          |   Must   | F-1.2, F-4.1 |       |
| F-5.1 | View execution history            | List of executions will be visible from the execution history screen.                                                                                                        |   Must   | F-1.3        |       |
| F-5.2 | Delete items from history         | Every item from history list will have it's own delete button. When user click on it, the delete dialog will be initialized.                                                 |   Must   | F-1.3, F-5.1 |       |
| F-5.3 | Re-execute pipelines from history | Every item from history list will have it's own execute button. When user click on it, the pipeline will execute, thus making a new record in execution history.             |   Must   | F-1.3, F-5.1 |       |
| F-6.1 | Night mode                        | Application can have a night mode, accessible from settings                                                                                                                   |   Could  | F-1.1        |       |

### Nonfunctional

1. Native android application