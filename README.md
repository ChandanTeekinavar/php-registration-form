**User Registration Form Application**
Overview: -
This project provides a simple user registration form built with PHP and MySQL
It includes a registration form, database interaction, and basic password hashing. The application can be deployed using Docker and Ansible.


**Key Features** : -
User registration form.
Password hashing with bcrypt.
Basic database interaction.
containerizing the application with docker.
Ansible for deployin to production and testing environments.
Jenkins for CI/CD Pipeline
Selenium for Automation testing (https://github.com/ChandanTeekinavar/php-registration-form-test-cases.git)


**Files and Directory Structure**: -
**register.html**: HTML file containing a simple form of Registration form with basic styling for a clean and user-friendly interface.

**register.php**: PHP script is responsible for handling user interface. It interacts with the database to store the credentials securely.

**config.php**: Configuration file containing database connection details.

**Dockerfile**: - It containerize the application.

**playbook.yml**: Ansible playbook file, which contains configurations to perform on the worker nodes. It installs Docker, starts the Docker service, and runs the Docker container with the registration form application on port 8080.

**Selenium** : It will do automation testing. I have pushed it to seperate gitHub repo. The repo link is "https://github.com/ChandanTeekinavar/php-registration-form-test-cases.git" I have used Assembly plugin in the Selenium. It will create a Jar file with all the Dependencies when you packages it. So that you can run it. To package it run "mvn clean package" command. It will create a jar file with all dependencies file in the target folder.




**Info about the project** : -
After successfully creating the application and configuring the database, Docker is used to build and containerize the application. A Jenkins CICD pipeline is created to stage the Docker Container using Ansible Playbook on to the test server . After staging, a seperate CICD pipeline is created for automation testing using selenium. With successful automation testing it is deployed on to the production server with “prod_config.yml”.
Also integrated GitHub Webhook so that the automation happens with a single commit on GitHub repository.




**Steps to use this App** : -
Clone this repo to your machine by running " git clone https://github.com/ChandanTeekinavar/php-registration-form.git" .

In Dockerfile there is environment placeholders you need to replace them with your database place holders. The container port is 80 

Then create CI/CD pipeline to automate.

Then build the Docker image 

Create an ansible inventory file in the instance where jenkins is installed.

And update docker image name in playbook.yml

And then you can you access it through the IP address of you worker nodes by giving appropriate port number.

**Testing** : -
For testing I have used the different repo. The repo link is "https://github.com/ChandanTeekinavar/php-registration-form-test-cases.git".

Update the your application link on the test scripts.

And then package the test scripts. Hence I have used Assembly plugin in the Selenium. It will create a Jar file with all the Dependencies when you packages it. So that you can run it. To package it run "mvn clean package" command. It will create a jar file with all dependencies file in the target folder.

To run that jar file give the command " java -jar <jar file name> (Give the name of the jar file which will be created after running the "mvn clean package" command)
