# Serverpod Dart Project

Welcome to the Serverpod Dart Project! This repository contains a set of Todo APIs implemented using Serverpod, a powerful framework for building web servers and APIs in Dart.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Installation](#installation)
- [Configuration](#configuration)
- [Usage](#usage)
- [API Endpoints](#api-endpoints)
- [Contributing](#contributing)

## Introduction

This project is a simple implementation of Todo APIs using Serverpod. It serves as a starting point for creating more complex APIs and can be used for testing and learning purposes. Serverpod provides an easy way to develop, deploy, and manage Dart-based web servers.

## Features

- Basic setup with Serverpod
- Full CRUD functionality for Todo items
- Easy to extend and customize
- Well-documented code

## Installation

To get started with this project, you need to have Dart and Serverpod installed on your machine. Follow the steps below to set up the project.

### Prerequisites

1. **Install Dart:**
   
   Follow the instructions on the [Dart website](https://dart.dev/get-dart) to install Dart.

2. **Install PostgreSQL:**
   
   Serverpod requires PostgreSQL. Download and install PostgreSQL from the [official website](https://www.postgresql.org/download/).

3. **Install Docker:**
   
   Serverpod requires Docker. Download and install Docker from the [official website](https://www.docker.com/products/docker-desktop/).

### Setup

1. **Clone the repository:**

   ```sh
   git clone https://github.com/your-username/serverpod-dart-project.git
   cd serverpod-dart-project
   dart pub global activate serverpod_cli
2. **Initial Setup:**

   ```sh
   cd mypod/mypod_server
   docker compose up --build --detach
   dart bin/main.dart --apply-migrations

## Configuration

Before running the project, ensure that you have configured Serverpod properly. You can customize the settings in the `config` folder, where you can find configuration files such as `development.yaml` and `production.yaml`. Make sure to set up your database connection and other necessary configurations.

## Usage

Once the server is running, you can interact with the Todo APIs using any HTTP client, such as Postman or Curl. The server will be running at `http://localhost:8080` by default.

## API Endpoints

Here are the Todo API endpoints available in this project:

### POST /todo

**Description:**  
Handles CRUD operations for Todo items based on the method provided in the request body.

#### Create Todo

**Request Body:**
```json
{
    "method": "create",
    "title": "New Todo",
    "description": "New Description",
    "priority": 5,
    "isDone": false
}
   
