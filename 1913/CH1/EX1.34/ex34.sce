clc
clear
//Input data
p1=32;//Pressure in mm of Hg at triple point of water
p2=76;//Pressure in mm of Hg above atmospheric pressure
p3=752;//Barometric pressure in mm of Hg
T=273.16;//Triple point of water in K

//Calculations
P1=p3+p1;//Total pressure in mm of Hg
P2=p2+p3;//Total pressure in mm of Hg
T2=((T*P2)/P1)-273.16;//Temperture in degree C

//Output
printf('Temperature is %3.2f degree C',T2)

