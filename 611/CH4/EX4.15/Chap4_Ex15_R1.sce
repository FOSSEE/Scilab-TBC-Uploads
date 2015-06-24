// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-4,Example 15,Page 115
//Title:Final temperature and amount of gas escaping the cylinder
//================================================================================================================
clear 
clc

//INPUT
V=0.1;//volume of cylinder in m^3
T0=300;//initial temperature of nitrogen in K
P0=14;//initial pressure of nitrogen in MPa
P=0.1;//ambient pressure in MPa
Pf=2;//final pressure of nitrogen in MPa
R=8.314;//universal gas constant in J/molK
gaamma=1.4;//ratio of the molar heat capacities at constant pressure and constant volume for nitrogen (no unit)

//CALCULATION
//calculation of final temperature of the gas in the tank in K using Eq.(4.51) (and applying u=Cv*T, h=Cp*T and N=P*V/R*T as the gas is taken to be ideal)
function[fn]=solver_func(Ti)
    //Function defined for solving the system to determine the final temperature
    fn=((P0*10^6)-(Pf*10^6))-((gaamma/2)*(T0+Ti)*(((P0*10^6)/T0)-((Pf*10^6)/Ti)));
endfunction
Tguess=300;//The final temperature guess value in K used for solving the system of equations
[Tf]=fsolve(Tguess,solver_func,1e-6)//using inbuilt function fsolve for solving the system of equations

//calculation of the moles of nitrogen escaping from the tank using Eq.(4.51) (and applying u=Cv*T, h=Cp*T and N=P*V/R*T as the gas is taken to be ideal)
N=(V/R)*(((P0*10^6)/T0)-((Pf*10^6)/Tf));

//OUTPUT
mprintf('\n The final temperature= %0.1f K\n',Tf);
mprintf('\n The amount of gas that has escaped from the cylinder= %0.2f mol\n',N);

//===============================================END OF PROGRAM===================================================



