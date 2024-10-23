# Use the official Tomcat 9 image with OpenJDK 17
FROM tomcat:9.0-jdk11-openjdk

# Copy the WAR file to the webapps directory of Tomcat
COPY target/ROOT.war /usr/local/tomcat/webapps/

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
