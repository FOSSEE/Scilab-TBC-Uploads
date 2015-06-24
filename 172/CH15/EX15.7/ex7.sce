//ques7
//calculating enthalpy of water at given pressure and temperature
clear
clc
//1.Assuming steam to be an ideal gas with value of Cp
T1=298.15;//Initial temperature in K
T2=573.15;//final temperature in K
T=(T1+T2)/2;//average temperature in K
Cp=1.79+0.107*T/1000+0.586*(T/1000)^2-.20*(T/1000)^3;//specific heat at constant pressure in kj/kg.K
M=18.015;//mass in kg
dh=M*Cp*(T2-T1);//enthalpy change in kJ/kmol
ho=-241.826;//enthalpy at standard temperature and pressure in kJ/mol
htp1=ho+dh/1000;//enthalpy at given temp and pressure in kJ/kmol
printf('1. Enthalpy of water at given pressure and temperature using value of Cp = %.3f kJ/kmol \n',htp1);

//2..Assuming steam to be an ideal gas with value for dh
dh=9359;//enthalpy change from table A.9 in kJ/mol
htp2=ho+dh/1000;//enthalpy at given temp and pressure in kJ/kmol
printf(' 2. Enthalpy of water at given pressure and temperature assuming value od dh = %.3f kJ/kmol \n',htp2);

//3. Using steam table
dh=M*(2977.5-2547.2);//enthalpy change for gases in kJ/mol
htp3g=dh/1000+ho;
dh=M*(2977.5-104.9);//enthalpy change for liquid in kJ/mol
hl=-285.830;//standard enthalpy for liquid in kJ/kmol
htp3l=hl+dh/1000;//enthalpy at given temp and pressure in kJ/kmol
printf(' 3.(i) enthalpy at given temp and pressure in kJ/kmol in terms of liquid = %.3f kJ/kmol \n',htp3l);
printf(' 3.(ii) enthalpy at given temp and pressure in kJ/kmol in terms of liquid = %.3f kJ/kmol \n',htp3g);
//4.using generalised charts
//htp=ho-(h2*-h2)+(h2*-h1*)+(h1*-h1);
//h2*-h2=Z*R*Tc,
//h2*-h1*=9539 kJ/mol, from part 2
//h1*-h1=0 ,as ideal gas 
Z=0.21;//from chart
R=8.3145;//gas constant in SI units
Tc=647.3;//critical temperature in K
htp4=ho+9539/1000-Z*R*Tc/1000;//enthalpy at given temp and pressure in kJ/kmol
printf(' 4. enthalpy at given temp and pressure in kJ/kmol using compressibility chart = %.3f kJ/kmol \n',htp4);