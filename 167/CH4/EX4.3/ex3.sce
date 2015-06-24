//ques3
//Isothermal Compression of an Ideal Gas
clc
P1=100//Initial Pressure in kPa
V1=0.4;//Initial Volume in m^3
V2=0.1;//final Volume in m^3
w=P1*V1*log(V2/V1);//work done for Isothermal process in kJ 
printf('Work done = %.1f kJ',w);
