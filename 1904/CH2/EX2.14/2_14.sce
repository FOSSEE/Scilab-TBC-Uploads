//To determine instantaneous demands and average demand for transformer type
//Page 84
clc;
clear;

//For a transformer type watthour meter; D = (3.6*Kr*Kh*CTR*PTR)/T
CTR=200;
PTR=1;
Kh=1.8;
 Kr1=32; //Revolutions of the disk in the first reading
 Kr2=27; //Revolutions of the disk in the second reading
 T1=59; //Time interval for revolutions of disks for the first reading
 T2=40; //Time interval for revolutions of disks for the second reading
 deff('y=Id(a,b)','y=((3.6*Kh*a*CTR*PTR)/b)'); //Function to calculate the instaneous demand
 
 D1=Id(Kr1,T1);
 D2=Id(Kr2,T2);
 Dav=(D1+D2)/2;
 
 printf('The instantenous demands are %g kW and %g kW for reading 1 and 2 and the average demand is %g kW\n',D1,D2,Dav)
