//Chapter-1, Example 1.13, Page 25
//=============================================================================
clc;
clear;
//INPUT DATA
m=80000;//mass of water lifted by pump in Kg/min
g=9.81;//gravity constant in m/sec^2
h=2;//pump is in operation for two hours a day
d=30;//pump is in operation for 30 days
T=h*d;//total time for which pump is in operation in hrs
n=70;//efficeincy in percentage
h=12;//the height in m to which pump lifts water
C=50;//cost of energy in paise/Kwh
//CALCULATIONS 
P=m*g*h;//potential energy possessed by water per minute or workdone by motor pump/minute measured in joules
P=P/60;//potential energy possessed by water per minute or workdone by motor pump/minute  measured in joules/sec or watts.
O=P/1000;//output power of motor in Kw
n=n/100;
E=O/n;//input power of motor in Kw
Et=E*T;//total energy supplied or energy consumption in Kwh
C=C/100;//cost of energy in Rs/Kwh
Ct=C*Et;//Total cost of energy
//OUTPUT
mprintf("Thus the total cost of energy is  Rs %4.0f",Ct);
 

//=================================END OF PROGRAM==============================
