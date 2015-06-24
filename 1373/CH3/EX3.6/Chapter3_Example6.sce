//Chapter-3, Example 3.6, Page 58
//=============================================================================
clc
clear

//INPUT DATA
r=[0.01,0.02];//Inner and outer radius of a copper cylinder in m
T=[310,290];//Inner and Outer surface temperature in degree C
ko=371.9;//Value of thermal conductivity at T=0 in W/m.K
b=(9.25*10^-5);//Temperature coefficient of thermal conductivity in 1/K

//CALCULATIONS
Tm=((T(1)-150)+(T(2)-150))/2;//Mean temperature in degree C
km=ko*(1-(b*Tm));//Constant thermal conductivity in W/m.K
q=((2*3.14*km*(T(1)-T(2)))/log(r(2)/r(1)))/1000;//Heat loss per unit length in kW/m

//OUTPUT
mprintf('Heat loss per unit length is %3.2f kW/m',q)
