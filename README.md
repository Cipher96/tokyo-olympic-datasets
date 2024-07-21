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
![image](https://github.com/user-attachments/assets/17cad07a-989b-4219-97d6-e6aa42952523)
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
1. Create a compute instance/cluster
2. Create a new notebook to write the transformation logic
3. To get the connection between the Databricks and Azure storage create a new app registration (make sure you keep the necessary credentials in Azure Key Vault). App registration is necessary because by registering your app and correctly configuring it to use Azure AD, you ensure that your application leverages robust security, seamless authentication, and secure access to resources, all while adhering to industry standards for identity management.![image](https://github.com/user-attachments/assets/74c82968-8bfc-4839-9035-b91686281ecc)
4. Add role assignment to the Azure Container using the IAM Access Control to make sure our app can access data from the data lake.![image](https://github.com/user-attachments/assets/72250b77-696b-4588-8c0a-7d27002cf70c)
![image](https://github.com/user-attachments/assets/43f1715c-4b85-4685-8652-577c9071327c)
5. Generally we need to create a spark session from scratch to create and run the spark application but in Databricks these sessions are already pre-defined and assigned to the spark application.
6. Transform and load data into storage (tokyoolympicdatasets/gold_data)![image](https://github.com/user-attachments/assets/d5b1d7f5-4102-4efe-aba3-55b2f41a56ea)



