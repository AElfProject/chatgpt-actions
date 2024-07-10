# Project Summary

In this repo, you'll find the following for aelf Smart Contract Copilot GPT:
- **chatgpt-api/api.py**: A simple Flask program written to retrieve information from external APIs.
- **openapi.yaml**: The OpenAPI specification with details about your API so ChatGPT understands what it does.

# Prerequisites
- Python 3.7+
- [Flask](https://flask.palletsprojects.com/en/3.0.x/installation/)

# Running the application
- Setup environment
    ```bash
    cd chatgpt-api
    python3 -m venv .venv
    . .venv/bin/activate
    ```
- Setup environmental variables
    ```bash
    export CMC_API_KEY=<YOUR_CMC_API_KEY>
    ```
- Install the requirements
    ```bash
    pip install -r requirements.txt
    ```
- Run
    ```bash
    flask --app api run
    ```

# Endpoints

<details>
<summary>/get-chains</summary>
Get a list of supported chains.
</details>

<details>
<summary>/get-balance</summary>
Get the balance of an address in the corresponding chain.
</details>

<details>
<summary>/get-price</summary>
Get the price of a cryptocurrency.
</details>

<details>
<summary>/get-transaction-result</summary>
Get the result of a transaction in a specific chain.
</details>

<details>
<summary>/get-block-height</summary>
Get the current block height in a specific chain.
</details>

<details>
<summary>/block-by-height</summary>
Get block information by block height in a specific chain.
</details>

<details>
<summary>/get-transactions-by-address</summary>
Get transactions by address in a specific chain. Default value of page is 0.
</details>