//Chapter-10, Example 10.1, Page 403
//=============================================================================
clc
clear

//INPUT DATA
I=1350;//Solar Irradiation in W/m^2
L=(1.5*10^8);//Approximate distance in km
D=(1.39*10^6);//Approximate diameter in km


//CALCULATIONS
E=(I*(L*1000)^2*3.14)/((3.14/4)*(D*1000)^2);//Emissive power of Earth 
Ts=(E/(5.67*10^-8))^0.25;//Surface temperature of sun in K

//OUTPUT
mprintf('Surface temperature of sun is %3.0f K',Ts)

//=================================END OF PROGRAM==============================
