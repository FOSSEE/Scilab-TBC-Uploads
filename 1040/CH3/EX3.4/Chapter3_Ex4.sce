//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc.,USA,pp 436.
//Chapter-3 Ex3.4 Pg No. 101
//Title:Volume of reactor for Gas Phase isothermal reaction
//==================================================================================================================
clear
clc
//INPUT
//First Order Reaction
//Basis: 1mol of feed
k=0.45;//Rate constant of first order reaction(s-1)
v0=120;//Volumetric flow rate(cm3/s)
C_A0=0.8;//Initial amount of reactant A (mol)
X_A=0.95;//Conversion in terms of reactant A
C_inert=0.2;//Concentration of inert (Nitrogen)in feed

//CALCULATION
E_A=((2*C_A0+C_inert)-(C_A0+C_inert))/(C_A0+C_inert);//Volume fraction
Tot_mol=(C_A0+C_inert)+(E_A);//Total No. of moles
V=v0*((-(E_A)*X_A)+Tot_mol*(log(1/(1-X_A))))/(k);//Refer Performance Equation equation 3.44 and 3.42 in Pg No. 100   
V_l=V*10^-3;//Volume of reactor in liters

//OUTPUT
mprintf('\n\tThe Volume of the reactor required for the given conversion is %.0f cm3 or %0.2f liters',V,V_l);

//FILE OUTPUT
fid= mopen('.\Chapter3-Ex4-Output.txt','w');
mfprintf(fid,'\n\tThe Volume of the reactor required for the given conversion is %.0f cm3 or %0.2f liters',V,V_l);
mclose(fid);
//==============================================================END OF PROGRAM==========================================




