//Chapter-3, Example 3.31, Page 109
//=============================================================================
clc
clear

//INPUT DATA
t=0.025;//Thickness of fin in m
L=0.1;//Length of fin in m
k=17.7;//Thermal conductivity of the fin material in W/m.K
p=7850;//Density in kg/m^3
Tw=600;//Temperature of the wall in degree C
Ta=40;//Temperature of the air in degree C
h=20;//Heat transfer coefficient in W/m^2.K
I0(1.9)=2.1782;//Io value taken from table 3.2 on page no.108
I1(1.9)=1.48871;//I1 value taken from table 3.2 on page no. 108

//CALCULATIONS
B=sqrt((2*L*h)/(k*t));//Calculation of B for determining temperature distribution 
X=((Tw-Ta)/I0(2*B*sqrt(0.1)));//Calculation of X for determining temperature distribution 
Y=(2*B);//Calculation of Y for determining temperature distribution 
Q=(sqrt(2*h*k*t)*(Tw-Ta)*((I1(2*B*sqrt(0.1)))/(I0(2*B*sqrt(0.1)))));
m=((p*t*L)/2);//Mass of the fin per meter of width in kg/m
q=(Q/m);//Rate of heat flow per unit mass in W/kg

//OUTPUT
mprintf('Temperature distribution is T=%i+%3.1f(%3.4f√x)\nRate of heat flow per unit mass of the fin is %3.2f W/kg',Ta,X,Y,q)

//=================================END OF PROGRAM==============================
