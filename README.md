# Analysis

## Terms

- Managing: Adding, editing, deleting
- Pipeline: A set of tasks defined in ETL Linkedpipes server instance
- Pipeline server: [ETL Linkedpipes](https://etl.linkedpipes.com/) server instance
- Link server: Backend connecting multiple pipeline servers
- User: Common user of the android application
- History: History of pipeline launches


## Requirements
### Functional

1. Pipeline managing
2. Launching pipelines
3. Pipeline history
4. Choosing the link server


### Nonfunctional

1. Native android application


## Use cases

User can:

1. Manage pipelines from multiple pipeline servers
2. View history
3. Clear history


# Architecture and technologies

Both link server and android application will be written in [Kotlin](https://kotlinlang.org/). Pipeline servers will communicate with the link server by sending JSON-LD objects and the link server will communicate with android application by sending JSON objects. The link server will be using [Ktor](https://ktor.io/) framework.

![server architecture img](https://raw.githubusercontent.com/Palda97/LPDocumentation/master/pics/bc-servers.png)

Android application will follow the **MVVM** (Model-View-ViewModel) architecture.

Following layers will be using these technologies:

- View
  - [Data Binding](https://developer.android.com/topic/libraries/data-binding)
- ViewModel

- Repository
  - [LiveData](https://developer.android.com/topic/libraries/architecture/livedata)
  - [Retrofit](https://github.com/square/retrofit)
  - [Room](https://developer.android.com/training/data-storage/room)

![android architecture img](https://raw.githubusercontent.com/Palda97/LPDocumentation/master/pics/bc-android.png)
