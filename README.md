# Split file into multiparts based on a specified size in MB

Related article: [Get started with Amazon S3 multi-part upload](https://maxat-akbanov.com/get-started-with-amazon-s3-multi-part-upload)

## Usage
1. Save this script in a file, for example `split_file.sh`.
2. Make the script executable: `chmod +x split_file.sh`.
3. Run the script with the desired file and part size in MB. For example: `./split_file.sh myfile.txt` 5 will split `myfile.txt` into 5 MB parts.