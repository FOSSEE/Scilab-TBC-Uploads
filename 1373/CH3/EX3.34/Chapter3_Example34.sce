//Chapter-3, Example 3.34, Page 117
//=============================================================================
clc
clear

//INPUT DATA
k=16;//Thermal conductivity of fin in W/m.K
L=0.1;//Length of fin in m
D=0.01;//Diameter of fin in m
h=5000;//Heat transfer coefficient in W/m^2.K

//CALCULATIONS
P=(3.14*D);//Perimeter of fin in m
A=(3.14*D^2)/4;//Area of fin in m^2
m=sqrt((h*P)/(k*A));//Calculation of m for determining heat transfer rate
n=tanh(m*L)/sqrt((h*A)/(k*P));//Calculation of n for checking whether installation of fin is desirable or not
x=(n-1)*100;//Conversion into percentage

//OUTPUT
mprintf('This large fin only produces an increase of %i percent in heat dissipation, so naturally this configuration is undesirable',x)

//=================================END OF PROGRAM==============================
