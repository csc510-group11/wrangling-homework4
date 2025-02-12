# Installation Guide

Follow these steps to set up the project:

## Prerequisites

- Ensure you have [Git](https://git-scm.com/) installed on your system.
- Install a web browser (e.g., Chrome, Firefox).

## Steps

1. **Clone the repository:**

    ```sh
    git clone https://github.com/csc510-group11/wrangling-homework4.git
    ```

2. **Navigate to the project directory:**

    ```sh
    cd wrangling-homework4
    ```

3. **Make the shell scripts executable:**

    ```sh
    chmod +x task1.sh task2.sh
    ```

4. **Run the `task1.sh` script to kill the `infinite.sh` script:**

    ```sh
    ./task1.sh
    ```

5. **Run the [task2.sh](http://_vscodecontentref_/1) script to process the [sample.txt](http://_vscodecontentref_/2) file:**

    ```sh
    ./task2.sh
    ```

6. To run an `.awk` file, use the following command:

    ```sh
    gawk -f path/to/script.awk path/to/inputfile.csv
    ```

## Additional Notes

- Make sure your browser is up to date for the best experience.
- If you encounter any issues, refer to the project's documentation or seek help from the community.
- To run the `awk` scripts, ensure you have `gawk` installed on your system.
- To test the scripts using `pytest`, ensure you have `pytest` installed and run the tests from the [tests](http://_vscodecontentref_/3) directory.