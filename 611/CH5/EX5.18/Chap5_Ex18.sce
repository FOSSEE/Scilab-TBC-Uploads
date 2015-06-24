// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-5,Example 18,Page 185
//Title: Isentropic efficiency
//================================================================================================================
clear 
clc

//INPUT
Pi=30;//pressure of superheated steam entering the turbine in bar
Ti=300;//temperature of superheated steam entering the turbine in degree celsius
Pe=0.1;//pressure at which steam exits the turbine in bar
Xe=0.9;//quality of steam at the exit (no unit)(for the actual turbine)

//CALCULATION
//For superheated steam at Pi and Ti
hi=2995.1;//enthalpy of superheated steam at the entrance in kJ/kg
si=6.5422;//entropy of superheated steam at the entrance in kJ/kgK

//For steam at Pe
hf=191.83;//enthalpy of saturated liquid in kJ/kg
hg=2584.8;//enthalpy of saturated vapour in kJ/kg
sf=0.6493;//entropy of saturated liquid in kJ/kgK
sg=8.1511;//entropy of saturated vapour in kJ/kgK

//For isentropic turbine s1=s2 i.e. si=se, where si is the entropy at the entrance and se is the entropy at the exit
X2=(si-sf)/(sg-sf);//calculation of the quality of steam at the exit for the isentropic process (no unit)
h2=(hf*(1-X2))+(X2*hg);//calculation of the enthalpy of steam at the exit for the isentropic process in kJ/kg
he=(hf*(1-Xe))+(Xe*hg);//calculation of the enthalpy of steam at the exit for the actual turbine in kJ/kg
n_T=(hi-he)/(hi-h2);//calculation of isentropic efficiency of the turbine using Eq.(5.68) (no unit)

//OUTPUT
mprintf("\n The isentropic efficiency of the turbine=%f \n",n_T);


//===============================================END OF PROGRAM===================================================
