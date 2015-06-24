//ques4
//A Two-Stage Refrigeration Cycle with a Flash Chamber
clear
clc
h6=95.47;//Enthalpy at state 6 in kJ/kg
hf=55.16;//Enthalpy of lquid water in kJ/kg
hfg=196.71;//difference in enthalpy of water and vapor in kJ/kg
x6=(h6-hf)/hfg;
printf('(a) Fraction of the refrigerant that evaporates = %.4f \n',x6);
h1=239.16;//enthalpy at state 1 in kJ/kg
h8=55.16;//Enthalpy at state 8 in kJ/kg
Ql=(1-x6)*(h1-h8);//heat removal in kJ/kg
printf(' (b) Amount of heat removed from refrigerant = %.1f kJ/kg \n',Ql);
//The enthalpy at state 9 is determined from an energy balance on mixing chamber
//Ein=Eout ie h9=x6*h3+(1-x6)*h2
h3=251.88;//Enthalpy at state 3 n kJ/kg
h2=255.93;//Enthalpy at state 2 n kJ/kg
h9=x6*h3+(1-x6)*h2;//Enthalpy at state 9 n kJ/kg
h4=274.48;//enthalpy at state 4 in kJ/kg
Win=(1-x6)*(h2-h1)+1*(h4-h9);//work input in kJ/kg
printf('      Work input = %.2f kJ/kg \n',Win);
COPr=Ql/Win;
printf(' (c) Coefficient of performance = %.2f ',COPr);
