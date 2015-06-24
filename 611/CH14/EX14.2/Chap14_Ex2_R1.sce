// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-14,Example 2,Page 490
//Title: Standard Gibbs free energy of formation
//================================================================================================================
clear 
clc

//INPUT
T=298.15;//temperature in K
P_s=0.16716;//saturation pressure of CH3OH in bar at T
//The reactions can be written down as:
//C(s)+2H2(g)+(1/2)O2(g)---->CH3OH(l)--->del_G1
//CH3OH(l)--->CH3OH(g)--->del_G2
//Overall: C(s)+2H2(g)+(1/2)O2(g)--->CH3OH(g)--->del_G=del_G2+del_G1
del_G1=-166.215;//standard Gibbs free energy of formation of CH3OH(l) in kJ
R=8.314;//universal gas constant in J/molK

//CALCULATION
//Now, the value of del_G2 has to be computed, from which del_G can be determined. The standard state for CH3OH(l) is 1 bar and 298.15K
//del_G2 is given by, del_G2=RTln(f_v/f_l), where f_v and f_l are the fugacities of the vapour and liquid phases respectively
//At 1 bar pressure, the vapour is an ideal gas and hence its fugacity is equal to pressure
f_v=1;//fugacity of the vapour in bar
f_l=P_s;//fugacity of the liquid is the saturation pressure at T, in bar
del_G2=R*T*log(f_v/f_l)*10^-3;//calculation of the value of del_G2 in kJ
del_G=del_G2+del_G1;//calculation of the standard Gibbs free energy of formation of CH3OH(g) in kJ

//OUTPUT
mprintf('The standard Gibbs free energy of formation of CH3OH(g)=%0.3f kJ \n',del_G);


//===============================================END OF PROGRAM===================================================



