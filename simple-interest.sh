#!/bin/bash  

# Simple Interest Calculator  

# Function to calculate simple interest  
calculate_simple_interest() {  
    principal=$1  
    rate=$2  
    time=$3  
    interest=$(echo "$principal * $rate * $time / 100" | bc)  
    echo "Simple Interest: $interest"  
}  

# Check if the correct number of arguments are provided  
if [ "$#" -ne 3 ]; then  
    echo "Usage: $0 <principal> <rate> <time>"  
    echo "Example: $0 1000 5 2"  
    exit 1  
fi  

# Assign arguments to variables  
principal=$1  
rate=$2  
time=$3  

# Call the function to calculate interest and display the result  
calculate_simple_interest "$principal" "$rate" "$time"  
