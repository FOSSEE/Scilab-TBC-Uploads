//Example 2-9, Page No- 38

clear
clc

gain_db = 60
vin = 50*10^-6

vout = 10^(60/20)*vin

printf('The output voltage is %.2f volt',vout);
