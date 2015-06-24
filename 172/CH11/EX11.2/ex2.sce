//Ques 2
//To determine the efficiency of Rankine cycle
clc
clear
//1-Inlet state of pump
//2-Exit state of pump
P2=4000;//Exit pressure in kPa
P1=10;//Inlet pressure in kPa
v=0.00101;//specific weight of water in m^3/kg
wp=v*(P2-P1);//work done in pipe in kJ/kg
h1=191.8;//Enthalpy in kJ/kg from table
h2=h1+wp;//enthalpy in kJ/kg
//2-Inlet state for boiler
//3-Exit state for boiler
h3=3213.6;//Enthalpy in kJ/kg from table
//3-Inlet state for turbine
//4-Exit state for turbine
//s3=s4(Entropy remain same)
s4=6.7690;//Entropy in kJ/kg from table
sf=0.6493;//Entropy at liquid state in kJ/kg from table
sfg=7.5009;//Entropy difference for vapor and liquid state in kJ/kg from table
x4=(s4-sf)/sfg;//x-factor
hfg=2392.8;//Enthalpy difference in kJ/kg for turbine
h4=h1+x4*hfg;//Enthalpy in kJ/kg

nth=((h3-h2)-(h4-h1))/(h3-h2);
printf('Percentage efficiency = %.1f ',nth*100);