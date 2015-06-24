// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-2,Example 2,Page 30
//Title:Work done by gas in piston cylinder assembly
//================================================================================================================
clear 
clc

//INPUT
v1=0.1;//volume of gas initially present in the cylinder in m^3
p1=0.1;//initial pressure of gas in MPa
p_atm=0.1;//atmospheric pressure acting on the piston in MPa
v2=0.3;//volume of gas after heating in m^3
p2=0.6;//pressure of gas after heating in MPa

//CALCULATION
work=((p1+p2)*(v2-v1)*10^6)/(2*1000);//calculation of work done by the gas in kJ 
//calculation is done by using reversible work done as integral of Pdv followed by a force balance taken on the piston

//OUTPUT
mprintf('\n The work done by the gas = %d kJ',work);

//===============================================END OF PROGRAM===================================================
