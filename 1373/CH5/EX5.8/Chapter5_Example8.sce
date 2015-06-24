//Chapter-5, Example 5.8, Page 177
//=============================================================================
clc
clear

//INPUT DATA
x=0.2;//Diatance of plane from the wall in m
t=10;//Time for heat flow in h
T=[25,800];//Initial and final tempertaure in degree C
k=0.8;//Thermal conductivity in W/m.K
a=0.003;//Thermal diffusivity in m^2/h

//CALCULATIONS
X=(x*(2*sqrt(a*k)));//Calculation of X for erf function
Y=0.585;//Taking ref(0.577)=0.585 from table 5.1 on page no. 175
Ti=T(2)-((T(2)-T(1)))*Y;//Temperarture of the plane in degree C
Qi=((-k*(T(1)-T(2))*exp(-x^2/(4*a*t)))/(sqrt(3.14*a*t)));//Instanteneous heat flow rate per unit area in W/m^2
Q=((2*k*(T(2)-T(1))*3600)/(sqrt((3.14*a)/t)))/10^8;//Total heat energy taken up by the wall in 10 hours in J/m^2

//OUTPUT
mprintf('Temperarture of the plane is %3.2f degree C\nInstanteneous heat flow rate per unit area is %i W/m^2\nTotal heat energy taken up by the wall in 10 hours is %3.3f*10^8 J/m^2',Ti,Qi,Q)

//=================================END OF PROGRAM==============================
