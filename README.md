# Java Project
## Replacing MERN w/ Java-based Technologies
We've worked with MERN before...
- MongoDB
- Express.js: a library that facilitates web server features in Node.js
- React.js
- Node.js: a JavaScript runtime environment
- Sequelize: an ORM that helps to abstract database tables as models
- Handlebars.js: a template engine for delivering HTML and data together

...however, we will work with the equivalent in Java-based technologies.

- `Spring Boot` will replace Node.js and Express.js
- `Spring Data JPA` will replace Sequelize.js
- `Thymeleaf` will replace Handlebars.js
- `Spring Session` will replace Express Session
- `Maven Central` will replace NPM to obtain packages

## Settings Spring Initializr
- Project section: Maven Project (default)
- Language section: Java (default)
- Spring Boot section: Version (default)
- Project Metadata section:
  - Group: `com.technews`
  - Artifact: `tech-news-java-api`
  - Name: `tech-news-java-api`
  - Description: `Tech News Java API Project`
  - Package Name: `com.technews`
  - Packaging: `Jar (default)`
  - Java: `8`

## Added Dependencies
- `Spring Web`
- `Spring Data JPA`
- `MySQL Driver`
- `Spring Session`
- `Thymeleaf`

## Manual Dependencies
- `Spring Security Core`
- `Thymeleaf Layout Dialect`
- `Spring Session JDBC`

## Conclusion
The general concepts used across both Java and JavaScript are actually similar.

## Installation
- `Java Development Kit (JDK)`
- `IntelliJ IDEA`

We will also work with the following...
- `MySQL Workbench`
- `POSTMan`

## How to Install Docker & Create an Image
- Create `Dockerfile`
  - Learn to create a Java Spring Boot App
- Create and push image into Docker Hub repo
- Docker Hub image convention
  - <vmlujanjr/{image-name}>
