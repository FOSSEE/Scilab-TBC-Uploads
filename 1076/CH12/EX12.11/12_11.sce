clear;
clc;

Zc=400
ef=20
z1=150;
z2=200
z=round((z1*z2/(z1+z2))*100)/100

et=2*ef*z/(Zc+z)
mprintf("\nSurge Voltage Transmitted= %.4f kV",et)

it1=et*1000/z1;
mprintf("\nSurge Current Transmitted in line 1= %.3f A",it1)

it2=et*1000/z2;
mprintf("\nSurge Current Transmitted in line 2= %.2f A",it2)

er=et-ef
mprintf("\nSurge Voltage Reflected= %.4f kV",er)
ir=-1*er*1000/Zc
mprintf("\nSurge Current Reflected= %.2f A",ir)



