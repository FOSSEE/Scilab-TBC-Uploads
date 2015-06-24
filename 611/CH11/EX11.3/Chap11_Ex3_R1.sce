// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-11,Example 3,Page 384
//Title:Bubble temperature
//================================================================================================================
clear 
clc

//INPUT
//For convenience, benzene is taken as 1 and toluene as 2
P=760;//pressure of the binary liquid mixture of benzene and toluene in Torr
x1=0.4047;//mole fraction of benzene in liquid phase (no unit)
antoine_const_benzene=[6.87987;1196.760;219.161];//Antoine's constants for Benzene from Table A.7
antoine_const_toluene=[6.95087;1342.310;219.187];//Antoine's constants for Toluene from Table A.7

//CALCULATION

//The form of the Antoine's equation used is logP=A-(B/(t+C)), where P is in Torr and t is in degree celsius
//Based on the procedure given in the texbook, the criterion of summation of (y_i)=1.0 will be checked, where y_i=(x_i*Pi_s)/P, where Pi_s is the saturation pressure obtained from the Antoine's equation.

x2=1-x1;//mole fraction of toluene in liquid phase (no unit)
tol=1e-6;//tolerance limit for convergence of the system using fsolve
tguess=100;//taking a guess value for the bubble temperature to be used in the fsolve function in degree celsius
function[fn]=solver_func(ti)
 fn=(((x1/P)*(10^(antoine_const_benzene(1,:)-(antoine_const_benzene(2,:)/(ti+antoine_const_benzene(3,:))))))+((x2/P)*(10^(antoine_const_toluene(1,:)-(antoine_const_toluene(2,:)/(ti+antoine_const_toluene(3,:)))))))-1.0;//Function defined for solving the system 
endfunction
[t]=fsolve(tguess,solver_func,tol)//using inbuilt function fsolve for solving the system of equations

//OUTPUT
mprintf('The bubble temperature of a binary liquid mixture of benzene and toluene at 760 Torr=%d degree celsius \n',t);

//===============================================END OF PROGRAM===================================================


