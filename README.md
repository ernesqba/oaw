# NEW README => OAW DOCKER

## Introduction

Thanks to continuous efforts to maximize the automation of the containerization methodology, the setup and management of the project have been significantly simplified. In this README, you'll find guidelines to get the project up and running.

### Important Note

This is an initial version of the project, which is in the process of continuous improvement. Please note that it is necessary to restart the application after each accessibility evaluation job.

## Prerequisites

- Docker
- Docker Compose

## Getting Started

1. Clone the repository:

   ```
   git clone https://github.com/ernesqba/oaw.git
   ```

2. Change to the project directory:

   ```
   cd oaw
   ```

3. Change to the docker directory:

   ```
   cd docker
   ```

4. Start the services:

   ```
   docker-compose up
   ```

5. Access the application via the following URL:

   ```
   http://localhost:8080/oaw/diagnostico.html
   ```

## Accessing the Evaluation Report

After the application has generated an accessibility evaluation report, since there is no dedicated mail server to send the message with the report, you can access the email message containing the report through the following address:

```
http://localhost:8090/viewer
```

While our tool can read emails in the `.eml` format, it currently does not support the viewing of embedded attachments directly. To access attachments within `.eml` files, we recommend utilizing an online tool such as the [Encryptomatic Viewer](https://www.encryptomatic.com/viewer/).


## Stopping the Application

1. Stop the services:

   ```
   docker-compose stop
   ```

2. Remove the containers:

   ```
   docker-compose down
   ```

## Troubleshooting

### User Declined Directory Sharing Error

⚠️ If you encounter a “user declined directory sharing” error when running `docker-compose up`, you can resolve it by going to Docker Desktop > Resources > File sharing, and adding the `oaw/docker` folder. More details can be found on [this link](https://stackoverflow.com/questions/70877785/docker-error-response-from-daemon-user-declined-directory-sharing).

### Text Encoding Issue

During the setup, you might encounter issues related to text string encoding in project files. The primary encoding was supposed to be UTF-8, but instances of ASCII and Latin-1 formats were detected. This discrepancy might cause errors during application compilation.

#### Resolution Script

To address this, a manual SH script has been designed to analyze and convert files with ASCII or Latin-1 encodings to UTF-8. This script is recommended only in situations where a related error occurs during the creation of a custom application image. To execute this script, navigate to the `/docker/scripts/` directory and run the following command:

```
sh utf-8-convert.sh
```

## Conclusion

We appreciate your collaboration on this project. Feel free to report any issues or contribute to further enhancements.

Thank you!


# OLD README => OAW
Rastreador Observatorio de Accesibilidad Web

This repository contains 3 applications:

* OAW: Java Web Application.
* Motor JS: An implementation of https://github.com/prerender/prerender to render web pages and return code.
* WCAG EM Tool: An fork of https://github.com/w3c/wcag-em-report-tool with capabiluty to exports as ODS format.

## OAW (Observatorio de Accesibilidad Web)

The application code is distributed in several maven projects:

* common: library with common functions
* crawler: web crawler
* intavcore: analyzer core code
* oaw: "father" project to generate all the libraries and dependencies
* portal: web project of the accessibility observatory

To compile the application, we will use maven (version 3.0.0 or higher). It will be necessary to download a number of dependencies from the central repositories so it needs to be properly frozen. It may be necessary to configure the proxy or a mirror:

* https://maven.apache.org/guides/mini/guide-proxies.html
* https://maven.apache.org/guides/mini/guide-mirror-settings.html

To do this, inside the oaw directory we will execute the following command so that it builds us the complete project:

>	mvn clean install -P development -DskipTests

If everything goes well, a war will be generated in the portal/target folder which will be the one we should display this war in the webapps folder of the tomcat server.

### Requeriments

Currently OAW is deployment under this configuration:

* Java 1.8.0_202
* Apache Tomcat 7
* MySQL 5

This is a Maven projet that requieres version 3.0.0 or high


### Instalation

You can find full documentacion (in Spanish) at https://administracionelectronica.gob.es/ctt/oaw/descargas in __Rastreador OAW WCAG 2.1__ section. At this moment, the last documentation avalaible can be downloaded [here](https://administracionelectronica.gob.es/ctt/resources/Soluciones/2431/Descargas/Liberacion-codigo-OAW---MAETD-v5-0-4.zip?idIniciativa=2431&idElemento=19053)

#### MySQL Database

To fresh install execute the scripts locates in folder /portal/scripts from version 4.0.0 to higher version.

#### Tomcat

Create a context configuration like this in *server.xml*:
```xml
<Context path="/oaw" reloadable="true">
    <Resource auth="Container" driverClassName="com.mysql.jdbc.Driver" type="javax.sql.DataSource" name="jdbc/oaw" url="jdbc:mysql://<server>:<port>/<schema>"
    maxActive="100"  maxIdle="10"  maxWait="-1" validationQuery="SELECT 1 as dbcp_connection_test"
    removeAbandoned="true" testOnBorrow="true"
    timeBetweenEvictionRunsMillis="60000" testWhileIdle="true"
    defaultTransactionIsolation="READ_UNCOMMITTED" username="<username>" password="<password>"/>
</Context>
````

Note to change _url_, _port_, _user_ and _password_ values. In folder _profiles_ exists an example of this configuracion. Adapt to your environment.

#### Profiles

There are several parameters that are configurable by environment, as well as configuration files that depend on the environment. In the current project there are two default compilation profiles: development and integration.

In the oaw project's pom.xml is reflected the configuration for each profile, being possible to create new ones or take advantage of the existing ones. There are also profiles in the portal project folder.

**It is necessary to review and adapt the configuration of the profiles if necessary.**

#### External properties

In the file /portal/profiles/<profile>/propertiesmanager.properties a series of properties files and their location are indicated. You should configure the files paths according to the information of this file.

- context.xml: Database connection parameters
- mail.properties: Mailing parameters
- basic.service.properties: Parameters of the mail sent by the diagnostic service
- check.descriptions.properties: Explanatory texts for problem solving included in the reports
- check.patterns.properties: Regural expressions and validation patterns

#### Unsatisfied dependencies in Maven Central

Some of the links are not available in Maven's central repository. They can be downloaded at the following links:1

- javax.jms:jms:jar:1.1: http://www.java2s.com/Code/Jar/j/Downloadjavaxjms11jar.htm
- javax.transaction:jta:jar:1.0.1B: http://www.java2s.com/Code/Jar/j/Downloadjta101bjar.htm

They need to be installed manually: https://maven.apache.org/guides/mini/guide-3rd-party-jars-local.html

## Motor JS

Into folder motor-js contains this tool has 3 packages:

- proxy: entrypoint of tool. Listen for petitions http/s.
- nginx: recivies proxy petitions and handle http and https to renderer.
- renderer: executes https://github.com/prerender/prerender ths listen to http/s requests, renderer the page and return result html

This project is configuring to execute as docker solution

## WCAG EM Tool

Into folder wcagemtool is an customitation of https://github.com/w3c/wcag-em-report-tool that can export result in ODS custom format.
