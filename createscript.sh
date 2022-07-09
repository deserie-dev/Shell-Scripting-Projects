#! /bin/bash

read -r -p "Enter the name of your script: " script
read -r -p "What is your full name: " fullname
read -r -p "Description of the script: " description

echo "#! /bin/bash" > /home/deserie/scripts/${script}
echo
echo "####################################################" >> /home/deserie/scripts/${script}
echo
echo "#Author: " $fullname >> /home/deserie/scripts/${script}
echo
echo "#Date: " $(date) >> /home/deserie/scripts/${script}
echo
echo "#Description: " >> /home/deserie/scripts/${script}
echo
echo "#Modified: " $ (date) >> /home/deserie/scripts/${script}
echo
chmod a+x ${script}
nano ${script}