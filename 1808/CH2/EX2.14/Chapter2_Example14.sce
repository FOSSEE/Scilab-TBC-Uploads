clc
clear
//INPUT DATA
//CH4+2O2=CO2+H2O ;//Combustion equation
//Q=Up-Ur ;//Energy balance for the closed system
hfco2=-393520;//enthalpy of CO2 From the table
dhco2=28041;//change in enthalpy in KJ/kmol
hfh2o=-241820;//enthalpy of H2O From the table
dhh2o=21924;//change in enthalpy in KJ/kmol
hfch4=-74850;//enthalpy of CH4 From the table
t1=298;//initial temperature in K
t2=900;//final temperature in K
p1=1;//Pressure in atm
R=8.314;//gas constant

//CALCULATIONS
Q=(hfco2+dhco2)+2*(hfh2o+dhh2o)-(hfch4)+3*R*(t1-t2);//Amount of heat transfer in kJ/kmol
p2=p1*(t2/t1);//Final pressure in atmosphere

//OUTPUT
printf('(i)Amount of heat transfer is %3.2f kJ/kmol \n (ii)Final pressure is %3.2f atmosphere',Q,p2 )



