//Ques 3
//To determine the efficiency of a cycle
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
//3-Exit state for Boiler
h3=3213.6;//Enthalpy in kJ/kg from table
//3-Inlet state for high pressure turbine
//4-Exit state for high pressure turbine
//s3=s4(Entropy remain same)
s4=6.7690;//Entropy in kJ/kg from table
sf=1.7766;//Entropy at liquid state in kJ/kg from table
sfg=5.1193;//Entropy difference for vapor and liquid state in kJ/kg from table
x4=(s4-sf)/sfg;//x-factor
hf=604.7//Enthalpy of liquid state in kJ/kg
hfg=2133.8;//Enthalpy difference in kJ/kg for turbine
h4=hf+x4*hfg;//Enthalpy in kJ/kg
//5-Inlet state for low pressure turbine
//6-Exit pressure for low pressure turbine
sf=0.6493;//Entropy in liquid state in kJ/kg for turbine
h5=3273.4;//enthalpy in kJ/kg 
s5=7.8985;//Entropy in kJ/kg
sfg=7.5009;//entropy diff in kJ/kg 
x6=(s5-sf)/sfg;//x-factor
hfg=2392.8;//enthalpy difference for low pressure turbine in kj/kg
h6=h1+x6*hfg;//entropy in kg/kg
wt=(h3-h4)+(h5-h6);//work output in kJ/kg
qh=(h3-h2)+(h5-h4);

nth=(wt-wp)/qh;
printf('Percentage efficiency = %.1f ',nth*100);