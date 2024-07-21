<h2>Data Engineering with Tokyo Olympic Data in Azure</h2>
<br>
<br>

**Architecture Diagram**
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
3. To get the connection between the Databricks and Azure storage create a new app registration (make sure you keep the necessary credentials in Azure Key Vault)![image](https://github.com/user-attachments/assets/74c82968-8bfc-4839-9035-b91686281ecc)
4. 


