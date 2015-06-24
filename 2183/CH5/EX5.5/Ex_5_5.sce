// Example 5.5//external power efficiency
clc;
clear;
close;
eg=1.44;//
v=2.8;//in volts
an=0.20;;//efficiency
nep=((an*(eg/v))*100);//external power efficiency 
disp(nep,"external power efficiency in percentage is")
