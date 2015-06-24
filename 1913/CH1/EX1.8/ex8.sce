clc 
clear
//Input data
v1=1.5;//Initial volume in m^3
v2=2;//Final volume in m^3
w1=2;//Work receiving in Nm
p=6;//constsnt pressure of gas in N/m^2

//Calculations
w2=p*(v2-v1);//Work done in Nm
W=w2-w1;//Net work done by the system in Nm

//Output
printf('Net work done by the system W= %3.1f Nm',W)
