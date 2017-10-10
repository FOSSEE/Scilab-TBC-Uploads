clc
clear
//INPUT DATA
pmi=7;//mean effective pressure in bar
L=0.45;//stroke in m
nc=1;//number of cylinders
N=80;//speed in rpm
n=1;//for 2 stroke
nm=80;//Mechanical efficiency in percentage

//CALCULATIONS
IP=(pmi*100*L*(3.14*(0.3^2)/4)*N*nc)/(60*n);//indicated power in kW
BP=(nm*IP)/100;//Brake power in kW
FP=IP-BP;//Frictional power in kW

//OUTPUT
printf('(i)Indicated power is %3.2f kW \n (ii)brake power is %3.2f kW \n(iii)frictional power is %3.2f kW ',IP,BP,FP)
