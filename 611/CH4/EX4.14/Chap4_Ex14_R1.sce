// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-4,Example 14,Page 113
//Title:Final state and mass of steam that entered the tank
//================================================================================================================
clear 
clc

//INPUT
V=3;//volume of tank in m^3
T0=100;//initial temperature of steam in degree celsius
T=300;//temperature of superheated steam in the pipeline in degree celsius
P=3;//pressure of superheated steam in the pipeline in MPa
R=8.314;//universal gas constant in J/molK

//CALCULATION
Ps=101.33;//pressure of saturated steam in kPa from steam tables corresponding to T0
vg=1.673;//specific volume of saturated vapour in m^3/kg obtained from steam tables corresponding to T0
hg=2676.0;//specific enthalpy of saturated vapour in kJ/kg obtained from steam tables corresponding to T0
h=2995.1;//specific enthalpy of superheated steam in kJ/kg obtained from superheated steam tables corresponding to T and P
u0=((hg*10^3)-(Ps*10^3*vg))*10^-3;//calculation of initial internal energy of steam in kJ/mol using the first law of thermodynamics for the adiabatic charging of a tank
m0=V/vg;//calculation of mass of steam initially in the tank in kg
//The first law of thermodynamics for the adiabatic charging of a tank is given by:
//mfuf-m0u0=(mf-m0)h. This equation is to be solved to determine mf

Tf=418;// assuming final temperature of superheated steam in degree celsius
//For superheated steam at P and Tf
vf=0.102329;//specific volume of superheated steam in m^3/kg
uf=2965.78;//internal energy of the superheated steam in kJ/kg 

mf_guess=V/vf;//taking a guess value for the mass of steam inside the tank at the end of the charging operation,in kg

function[fn]=solver_func(ui)
//Function defined for solving the system to determine the internal energy of steam inside the tank at the end of the charging operation in kJ/kg using Eq.(4.44, where Q=0 as the process is adiabatic)
    fn=(mf_guess*ui)-(m0*u0)-((mf_guess-m0)*h);
endfunction
[uf_solved]=fsolve(mf_guess,solver_func,1e-6)//using inbuilt function fsolve for solving the system of equations
mf=mf_guess//mass of the steam inside the tank at the end of the charging operation, in kg
mass=mf-m0;//calculation of mass of steam that entered the tank in kg

//OUTPUT
mprintf("\n The final state of steam(superheated),Pressure=%d MPa\n",P);
mprintf("\n The final state of steam(superheated),Temperature=%d degree celsius\n",Tf);
mprintf("\n The mass of steam that entered the tank=%0.3f kg\n",mass);

//===============================================END OF PROGRAM===================================================

