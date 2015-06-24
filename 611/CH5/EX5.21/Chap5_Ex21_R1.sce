// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-5,Example 21,Page 188
//Title: Isentropic efficiency of nozzle
//================================================================================================================
clear 
clc

//INPUT
Pi=3;//pressure of dry saturated steam entering the nozzle in bar
Xe=0.98;//quality of steam exiting the nozzle (no unit)
Pe=2;//pressure of steam exiting the nozzle in bar

//CALCULATION
//For steam at Pi
hi=2724.7;//enthalpy of dry saturated steam in kJ/kg
he=2652.8;//enthalpy of steam at the exit for an isentropic nozzle,from Example 5.15,in kJ/kg
V2_2_s=hi-he;//calculation of the specific kinetic energy of steam at the nozzle exit (for isentropic nozzle) in kJ/kg

//For steam at Pe
hf=504.70;//enthalpy of saturated liquid in kJ/kg
hg=2706.3;//enthalpy of saturated vapour in kJ/kg
he_act=((1-Xe)*hf)+(Xe*hg);//calculation of enthalpy of steam at the exit in kJ/kg
V2_2=hi-he_act;//calculation of the actual specific kinetic energy of steam leaving the nozzle in kJ/kg
n_N=(V2_2)/(V2_2_s);//calculation of isentropic efficiency of the nozzle using Eq.(5.72) (no unit)

//OUTPUT
mprintf("\n The isentropic efficiency of the nozzle=%0.3f \n",n_N);


//===============================================END OF PROGRAM===================================================
