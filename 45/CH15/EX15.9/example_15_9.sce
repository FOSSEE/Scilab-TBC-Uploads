//example 15.9
clc ;
clear;
//part (a) 
//an=input('Enter the analog input in volts :');
format('v',12);// changing the precision of calculation 
an=2.5;
k=an*1000/19.53; 
k= round(k);
m=dec2bin(k); // converting from decmal to binary 
printf('The digital output is :%s\n',m);
//part(b)
//dg=input('Enter the digital output as a string:');
dg='00100010';
f=bin2dec(dg); // converting binary to decimal
y=f*19.53*10^-3;
printf(' The analog input in volts is :%f',y);
  

