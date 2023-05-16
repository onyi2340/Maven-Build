<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>

    <!-- Project details -->
    <groupId>com.mt</groupId>
    <artifactId>myMaven-project</artifactId>
    <version>1.0.0-SNAPSHOT</version>
	 <packaging>jar</packaging>

        <name>maven-stanalone-application</name>
        <url>http://mylandmarktech.com</url>

        <organization>
                <name>Landmark Technologies</name>
                <url>http://mylandmarktech.com/</url>
        </organization>

        <description>Maven Standalone Application</description>

        <properties>
                <sonar.host.url>http://35.154.242.68:9000/</sonar.host.url>
                <sonar.login>admin</sonar.login>
                <sonar.password>admin</sonar.password>
                <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
                <maven.compiler.source>11</maven.compiler.source>
                <maven.compiler.target>11</maven.compiler.target>
        </properties>

        <dependencies>

                <dependency>
                        <groupId>junit</groupId>
                        <artifactId>junit</artifactId>
                        <version>3.8.1</version>
                        <scope>test</scope>
                </dependency>

        </dependencies>

        <!-- Committing and updating changes through Maven, by using below mvn command.
                For Commiting mvn -Dmessage="Updated using maven" scm:checkin For updating
                mvn scm:update -->
        <!--
        <scm>
                <connection>scm:git:https://github.com/LandmarkTechnology/maven-standalone-applicationn</connection>
                <developerConnection>scm:git://github.com/LandmarkTechnology/maven-standalone-application</developerConnection>
                <tag>HEAD</tag>
                <url>https://github.com/LandmarkTechnology/maven-standalone-application</url>
        </scm>
        <issueManagement>
                <system>GitHub</system>
                <url>//github.com/LandmarkTechnology/maven-standalone-application/issues</url>
        </issueManagement>
        -->
        <build>
          <plugins>
            <plugin>
              <!-- Build an executable JAR -->
              <groupId>org.apache.maven.plugins</groupId>
              <artifactId>maven-jar-plugin</artifactId>
              <version>3.3.0</version>
              <configuration>
                <archive>
                  <manifest>
                    <addClasspath>true</addClasspath>
                    <classpathPrefix>lib/</classpathPrefix>
                    <mainClass>com.mt.sample.HelloWorld</mainClass>
                  </manifest>
                </archive>
              </configuration>
            </plugin>
          </plugins>
        </build>

</project>

