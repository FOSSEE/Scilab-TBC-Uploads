clc
clear
//Initialization of variables
m1=5000 //kg/h
cp1=3.2 //kJ/kg K
cp2=4.186 //kJ/kg K
t1=220 //C
t2=30 //C
T1=210 //C
T2=20 //C
//calculations
m2=m1*cp1*(t1-t2)/(cp2*(T1-T2))
ds=m1*cp1*log((t2+273.1)/(t1+273.1)) + m2*cp2*log((T1+273.1)/(T2+273.1))
//results
printf("Change in entropy = %d kJ/h K",ds)
