//Chapter-5, Illustration 20, Page 271
//Title: Air Compressors
//=============================================================================
clc
clear

//INPUT DATA
P1=1;//Pressure at point 1 in bar
Pns=100;//Maximum pressure in bar
p=4;//Pressure ratio

//CALCULATIONS
Ns=log(Pns)/log(p);//Number of stages
y=ceil(Ns);//Rounding off to next higher integer
ps=(Pns/P1)^(1/y);//Exact stage pressure ratio
P2=ps*P1;//Pressure at point 2 in bar
P3=ps*P2;//Pressure at point 3 in bar
P4=ps*P3;//Pressure at point 4 in bar

//OUTPUT
mprintf('Number of stages are %3.0f \n Exact stage pressure ratio is %3.3f \n Intermediate pressures are %3.3f bar,%3.2f bar,%3.2f bar',y,ps,P2,P3,P4)








//==============================END OF PROGRAM=================================
