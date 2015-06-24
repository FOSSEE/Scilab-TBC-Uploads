
clc
//initialisation of variables
P=14.7//lbf/in^2
U=0.622 //lbf/in^2
umga=U*(0.3631/(P-0.36))//lbf/in^2
T1=84//F
T2=70//F
Pg=0.577//F
Umga1=(0.24*(T2-T1)+umga*1054.3)/(1094.4-38.0)//lbf/in^2
P1=0.289 //lbf/in^2
//CALCULATIONS
Fhi=(P1/Pg)//lbf/in^2
//RESULTS
printf('The humidity ratio and relative humidity of the air water vapor mixture entering=% f',Fhi)
