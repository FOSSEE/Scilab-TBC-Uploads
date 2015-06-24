// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-7,Example 11,Page 259
//Title: The skating problem
//================================================================================================================
clear 
clc

//INPUT
m=60;//mass of the person who wants to skate in kg
T=-2;//temperature of the ice in degree celsius
A=15;//area of contact between the skate edges and ice in mm^2
vs=1.091*10^-3;//specific volume of ice in m^3/kg (at Tref)
vf=1.0*10^-3;//specific volume of water in m^3/kg (at Tref)
del_hf=6.002;//enthalpy of melting of ice in kJ/mol
g=9.81;//accleration due to gravity in m/s^2
Tref=0;//reference temperature at which the specific enthalpy of ice and water are taken in degree celsius

//CALCULATION
Tref=Tref+273.15;//conversion of temperature in K
del_P=((m*g)/(A*10^-6))*10^-6;//calculation of the pressure exerted on the ice by the skater in MPa
del_v=(vf-vs)*(18*10^-3);//calculation of the change in volume in m^3/mol
del_T=(del_P*10^6)/((del_hf*10^3)/(Tref*del_v));//calculation of the reduction in melting point of ice using Eq.(7.86)(Clapeyron equation) in degree celsius

//OUTPUT
mprintf("\n The temperature of ice originally = %d degree celsius \n",T);
mprintf("\n The reduction in melting point of ice due to the additional pressure,computed using the Clayperon equation = %0.2f degree celsius \n",del_T);
if del_T<T then
    mprintf ("\n The ice can melt due to the additional pressure and therefore it will be possible to skate \n");
else
    mprintf ("\n The ice will not melt and therefore it will be difficult to skate \n");
end

//===============================================END OF PROGRAM===================================================
