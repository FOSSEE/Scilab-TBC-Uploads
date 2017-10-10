//Example 9_11
clc();
clear;
//To find out what horsepower is required
p=1.29  //Units in Kg/Meter^3
Cd=0.45
af=2   //Units in Meter^2
v=20   //Units in meters/sec
M=1000   //units in Kg
F=(0.5*p*Cd*af*v^2)+((M/1000)*((110+(1.1*v))))   //Units in Newtons
Power=F*v   //Units in Watts
Power=Power/747.3061     //units in Horse Power
reqHPower=Power^2   //unis in Horse power
printf("The required power is=%d hp",reqHPower)
//In text book the answer is printed wrong as 80 Hp the correct answer is 95Hp
