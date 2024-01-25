![php-registration-FlowChart drawio](https://github.com/ChandanTeekinavar/php-registration-form/assets/146753303/94c07d53-2c67-417b-abfa-92ff1be61d04)

**User Registration Form Application**
Overview: -

A streamlined User Registration Form Application crafted with PHP and MySQL. This dynamic application includes a secure registration form, robust database interaction, and incorporates essential password hashing. To enhance deployment, I've containerized it with Docker and implemented Ansible for seamless production and testing environment deployments.




**Key Features** : -

📝 User-friendly registration form.

🔒 Password hashing with bcrypt for enhanced security.

🔄 Basic yet powerful database interaction.

🐳 Containerized application with Docker.

🚀 Ansible orchestrating deployments for both production and testing.

🔧 Jenkins facilitates a robust CI/CD pipeline.

⚙️ Selenium employed for efficient automation testing. Check out the test cases here "https://github.com/ChandanTeekinavar/php-registration-form-test-cases.git".




**Files and Directory Structure**: -

**register.html**: Clean HTML form for a seamless user experience.

**register.php**: PHP script handling the user interface and securely interacting with the database.

**config.php**: Configuration file housing essential database connection details.

**Dockerfile**: Containerizes the entire application.

**playbook.yml**: Ansible playbook configuring worker nodes, installing Docker, and deploying the application on port 8080.

**Selenium**: Automated testing with a separate GitHub repository. Find the Selenium test cases here "https://github.com/ChandanTeekinavar/php-registration-form-test-cases.git".





**Project Insights** : -

Following the successful application creation and database configuration, Docker simplifies the building and containerization process. Leveraging Jenkins CI/CD pipeline, the Docker Container is staged onto the test server using Ansible Playbook. Subsequently, a separate CI/CD pipeline is initiated for comprehensive automation testing via Selenium. Upon successful testing, deployment onto the production server is executed using "prod_config.yml". The project is seamlessly integrated with GitHub Webhook for automated processes triggered by a single GitHub repository commit.





**Steps to use this App** : -

Clone the repository using "git clone https://github.com/ChandanTeekinavar/php-registration-form.git".

In the Dockerfile, replace environment placeholders with your database details.

Build the Docker image.

Create an Ansible inventory file on the instance where Jenkins is installed .

Update the Docker image name in playbook.yml.

Access the application through the IP address of your worker nodes and the appropriate port. (The container port in the Dockerfile is 80)




**Testing** : -

For testing, I've utilized a separate repository. Check out the test scripts here "https://github.com/ChandanTeekinavar/php-registration-form-test-cases.git". 

Update your application link in the test scripts and run the jar file generated after packaging with "mvn clean package". 

Execute the jar file with the command "java -jar (jar file name)".
