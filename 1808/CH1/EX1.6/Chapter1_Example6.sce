clc
clear
//INPUT DATA
p1=780;//pressure of gas in mm
p2=760;//pressure of gas in mm
v1=15;//volume of gas in m^3
T1=288;//Temperature in k
T2=273;//Temperature in k


//CALCULATIONS
v2=(p1*v1*(T2/T1))/p2;//volume of gas in m^3

//OUTPUT
printf('Gas consumption at NTP is %3.3f m^3 ',v2)
