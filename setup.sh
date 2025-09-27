#!/bin/bash

# Make scripts executable
echo "Making scripts executable..."
chmod +x ml-100k/mku.sh ml-100k/allbut.pl

# Create HDFS directories if they don't exist
echo "Setting up HDFS directories..."
hdfs dfs -mkdir -p /user/$USER/ml-100k

# Upload data to HDFS
echo "Uploading data to HDFS..."
hdfs dfs -put -f ml-100k/u.data /user/$USER/ml-100k/
hdfs dfs -put -f ml-100k/u.user /user/$USER/ml-100k/
hdfs dfs -put -f ml-100k/u1.test /user/$USER/ml-100k/

echo "Setup complete. HDFS directories and data have been initialized."
echo "You can now run the analysis scripts."

# Create splits using mku.sh (optional - uncomment to use)
# echo "Creating data splits..."
# cd ml-100k && ./mku.sh && cd ..
