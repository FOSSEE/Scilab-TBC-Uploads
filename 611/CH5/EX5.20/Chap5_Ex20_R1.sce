// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-5,Example 20,Page 187
//Title: Power consumed by the pump
//================================================================================================================
clear 
clc

//INPUT
Ti=30;//temperature of saturated liquid water in degree celsius
m=500;//mass flow rate of water being pumped in kg/s
P2=3;//preesure maintained in the boiler in MPa
n_p=0.75;//isentropic efficiency of the pump (no unit)

//CALCULATION
//For saturated liquid water at Ti
vf=0.0010043;//specific volume in m^3/kg
P1=4.241;//pressure in kPa

//Assuming that the liquid is incompressible, the power input required for an isentropic pump is calculated as:
Ws_m=(vf*((P2*10^6)-(P1*10^3)))*10^-3;//power input required by the isentropic pump in kJ/kg
Ws_act_m=Ws_m/n_p;//power input required by an actual pump in kJ/kg 
P=((Ws_act_m*10^3)*m)*10^-6;//calculation of the total power consumed by the pump in MW

//OUTPUT
mprintf("\n The power consumed by the pump = %d MW\n",P);


//===============================================END OF PROGRAM===================================================
