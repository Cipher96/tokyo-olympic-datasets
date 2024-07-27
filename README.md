<h2>Data Engineering with Tokyo Olympic Data in Azure</h2>
<br>

**Architecture Diagram**<br>
![image](https://github.com/user-attachments/assets/a0cf0b7a-2132-4c77-8576-18fadef1c8f2)
<br>
<br>

**Tokyo-olympic-datasets**<br>
Storing the datasets of the Tokyo Olympics in CSV format in main/data directory, to access as a source in the ADF pipeline.
<br>
<br>

**Resource Group**<br>
Creating the resource group for a structured way of managing, monitoring, and securing resources, enhancing operational efficiency and governance.
The resource group will list all the resources used/created.
We will be creating/using the same resource group for all the Azure services.
![image](https://github.com/user-attachments/assets/c28e8fbc-f1b1-4cb1-9160-38297b0811c8)

<br>
<br>

**Storage**<br>
Using containers, Azure Storage Accounts provide a structured and secure way to manage large volumes of unstructured data, ensuring efficient data organization, access control, and scalability.
Creating container in the Azure Storage to store and access the data from a hierarchical folder structure. We are creating 2 folders-
1. To store raw data
2. To store processed/transformed data

![image](https://github.com/user-attachments/assets/4fcbd8db-5351-4e19-addd-6736e2e4e4b1)
![image](https://github.com/user-attachments/assets/e0497cd8-dbaf-4cd8-9039-ae19a5f04b44)

<br>
<br>

**ADF Pipelines**<br>
1. Creating raw-ingestion-pipeline to copy/store raw data from GitHub directory to raw_data container

![image](https://github.com/user-attachments/assets/d89a14cc-4ccb-42aa-80e1-acde6c3b247a)
![image](https://github.com/user-attachments/assets/3d862643-4bf2-40f3-847c-f863b02ffadc)

<br>
<br>

**Azure Databricks**<br>
1. Create a compute instance/cluster![image](https://github.com/user-attachments/assets/01f847fd-6864-41f5-93b0-023f51d2888d)
2. Create a new notebook to write the transformation logic![image](https://github.com/user-attachments/assets/0ff9e2f6-49a8-4af4-908e-32884f25a355)
3. To get the connection between the Databricks and Azure storage create a new app registration (make sure you keep the necessary credentials in Azure Key Vault). App registration is required because by registering your app and correctly configuring it to use Azure AD, you ensure that your application leverages robust security, seamless authentication, and secure access to resources, all while adhering to industry standards for identity management.![image](https://github.com/user-attachments/assets/74c82968-8bfc-4839-9035-b91686281ecc)
4. Add role assignment to the Azure Container using the IAM Access Control to ensure our app can access data from the data lake.![image](https://github.com/user-attachments/assets/72250b77-696b-4588-8c0a-7d27002cf70c)
![image](https://github.com/user-attachments/assets/43f1715c-4b85-4685-8652-577c9071327c)
5. Generally we need to create a spark session from scratch to create and run the spark application but in Databricks these sessions are already pre-defined and assigned to the spark application.
6. Transform and load data into storage (tokyoolympicdatasets/gold_data)![image](https://github.com/user-attachments/assets/d5b1d7f5-4102-4efe-aba3-55b2f41a56ea)

<br>
<br>

**Azure Synapse for Data Analysis**
1. Create a Synapse workspace with the same resource group, and go to the Synapse studio.![image](https://github.com/user-attachments/assets/440bbb52-ffbf-46b0-9b6a-a46683c847ff)
2. Verify that you have the ADLS Gen 2 linked with the synapse workspace in the Linked Tab od Data section.![image](https://github.com/user-attachments/assets/c5f5a3bc-ad4e-449f-bde8-ae6f7df1888d)
3. Created a Lake Database to analyse the data in a Serverless SQl Pool.![image](https://github.com/user-attachments/assets/fae330a3-3d00-4984-971a-5da5a8a0ad9f)
4. In the Develop section create a new SQL Script/ Notebook to analyse the data.![image](https://github.com/user-attachments/assets/fb632433-15b8-4261-b7d7-dbfef8b13cb7)
5. Along with viewing the Data, we can also visualise the data in the Chart section.![image](https://github.com/user-attachments/assets/c8f19a9c-a444-47e8-9428-2df8d1ad8e9b)

**Visualization in Tableau/Power BI**
we can connect Tableau/Power BI to the Storage account and create interactive dashboard. (this is not covered in the scope of this project, it mainly focuses on the Azure services and tools with respect to Data Engineering only.)

**Thanks**
If you like this project please do a fork.







