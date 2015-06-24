//ques12
//Compressing a Substance in the Liquid versus Gas Phases
clear
clc
// (a)steam as a saturated liquid
v1=0.001043;//=vf(specific volume of fluids)  @ 100kPa in m^3/kg
P2=1000;//final pressure in kPa
P1=100;//initial pressure in kPa
w=integrate('v1*P^0','P',P1,P2);//work done in kJ/kg
printf('(a) Work done is = %.2f kJ/kg \n',w);

//(b)saturated vapor at the inlet state
//state 1
P1=100;//pressure at state 1 in kPa
//table A-6
h1=2675.0;//enthalpy of heat in kJ/kg
s1=7.3589;//entropy at in kJ/kg.k
//state 2
P2=1;//pressure in MPa
s2=7.3589;//s2=s1 entropy remains same
h2=3194.5;//table A-6 enthalpy of heat in kJ/kg

w=h2-h1;//work done in kJ/kg
printf(' (b) Work done = %.2f kJ/kg ',w);
