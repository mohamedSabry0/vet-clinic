# Vet Clinic

## Getting Started

This repository includes files with plain SQL that can be used to recreate a database:

- Use [schema.sql](./schema.sql) to create all tables.
- Use [data.sql](./data.sql) to populate tables with sample data.
- Check [queries.sql](./queries.sql) for examples of queries that can be run on a newly created database. **Important note: this file might include queries that make changes in the database (e.g., remove records). Use them responsibly!**

<a name="readme-top"></a>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [Vet Clinic](#vet-clinic)
  - [Getting Started](#getting-started)
- [📗 Table of Contents](#-table-of-contents)
- [📖 \[Vet Clinic\] ](#-vet-clinic-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
      - [Download and install PostgreSQL:](#download-and-install-postgresql)
    - [Setup](#setup)
    - [Install](#install)
    - [Usage](#usage)
  - [👥 Author ](#-author-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# 📖 [Vet Clinic] <a name="about-project"></a>

The **Vet Clinic** has implemented a PostgreSQL-based database, which serves as a comprehensive and efficient system for managing various aspects of veterinary care. This database consists of multiple interconnected tables, specifically designed to store information related to owners, veterinarians, visits, and other relevant data. With this database, the vet clinic can effectively manage and organize important information for the care and treatment of animals.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **[Database created based on real life example]**
- **[Database populated with sample data]**
- **[Queries to retrieve data from the database that simulate real life]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

PostgreSQL installed on your local machine.

#### Download and install PostgreSQL:

You can download and install the latest version of PostgreSQL from the [official website](https://www.postgresql.org/download/). Follow the installation instructions for your operating system.

### Setup

Clone this repository to your desired folder:

```sh
  cd my-folder
  git clone git@github.com:mohamedSabry0/vet-clinic.git
```

### Install

- After installing PostgreSQL, create a new database:

```sh
  createdb vet_clinic
```

- Then run the following command to create the tables:

```sh
  psql -d vet_clinic -f schema.sql
```

- Finally, populate the tables with sample data:

```sh
  psql -d vet_clinic -f data.sql
```

### Usage

To run the project, execute the following command:

```sh
  psql -d vet_clinic -f queries.sql
```

- You can also run the queries in the queries.sql file in the PostgreSQL shell.
- Feel free to add your own queries to the queries.sql file and test them.

<!-- AUTHORS -->

## 👥 Author <a name="authors"></a>

👤 **Mohamed Sabry**

- GitHub: [@mohamedSabry0](https://github.com/mohamedSabry0)
- Twitter: [@mohsmh0](https://twitter.com/mohsmh0)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/mohamed-sabry0/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- [ ] **[Deploy a live demo]**
- [ ] **[Include more real world scenarios and practices]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/mohamedSabry0/vet-clinic/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project it would be truly appreciated if you give it a ⭐️.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I am grateful for these resources as they were a reason that I obtained a glimpse of their abundance of knowledge:

- [Microverse](https://www.microverse.org/)
- [tutorialspoint postgreSQL](https://www.tutorialspoint.com/postgresql/)
- [PostgreSQL Documentation](https://www.postgresql.org/docs/current/index.html)
- [PostgreSQL Tutorial](https://www.postgresqltutorial.com/)
- [PostgreSQL Exercises](https://pgexercises.com/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
