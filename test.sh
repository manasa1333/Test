#!/bin/bash
 
echo "Running iteration 10 Threads"

cd /home/cloud-user/vali/Internal_API_Regression/apache-jmeter-5.6.3/bin
sudo sh jmeter.sh -n -t internalAPIs_10threads.jmx -l regression_10_threads.jtl

cd /home/cloud-user/vali/Internal_API_Regression/lics/apache-jmeter-5.6.3/bin
sudo sh jmeter.sh -n -t internalAPIs_lics_metering_10threads.jmx -l lics_regression_10_threads.jtl
sleep 300
 
echo "Running iteration Production Throughput"

cd /home/cloud-user/vali/Internal_API_Regression/apache-jmeter-5.6.3/bin
sudo sh jmeter.sh -n -t internalAPIs_prod_throughput_all.jmx -l regression_prod_throughput.jtl

cd /home/cloud-user/vali/Internal_API_Regression/lics/apache-jmeter-5.6.3/bin
sudo sh jmeter.sh -n -t internalAPIs_lics_throughput.jmx -l lics_regression_prod_throughput.jtl
 
echo "All iterations completed."