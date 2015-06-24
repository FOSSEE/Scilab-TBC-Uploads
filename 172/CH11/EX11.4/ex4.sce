//ques4
//Efficiency of Refrigeration cycle
clc
clear
//from previous examples
h1=191.8;//kJ/kg
h5=3213.6;//kg/kg
h6=2685.7;//kJ/kg
h7=2144.1;//kJ/kg
h3=604.7;//kJ/kg
//1-Inlet state of pump
//2-Exit state of pump
P2=400;//Exit pressure in kPa
P1=10;  //Inlet pressure in kPa
v=0.00101;//specific weight of water in m^3/kg
wp1=v*(P2-P1);//work done for low pressure pump in kJ/kg
h1=191.8;//Enthalpy in kJ/kg from table
h2=h1+wp1;//enthalpy in kJ/kg
//5-Inlet state for turbine
//6,7-Exit state for turbine
y=(h3-h2)/(h6-h2);//extraction fraction
wt=(h5-h6)+(1-y)*(h6-h7);//turbine work in kJ/kg
//3-Inlet for high pressure pump
//4-Exit for high pressure pump
P3=400;//kPa
P4=4000;//kPa
v=0.001084;//specific heat for 3-4 process in m^3/kg
wp2=v*(P4-P3);//work done for high pressure pump
h4=h3+wp2;//Enthalpy in kJ/kg
wnet=wt-(1-y)*wp1-wp2;
qh=h5-h4;//Heat output in kJ/kg
nth=wnet/qh;
printf('Refrigerator Efficiency = %.1f ',nth*100);
