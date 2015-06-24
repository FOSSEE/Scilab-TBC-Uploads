clc
clear
//DATA GIVEN
h12=840;                //Adiabatic enthalpy drop, (h1-h2) in kJ/kg
h1=2940;                //enthalpy of steam supplied in kJ/kg
p2=0.1;                 //back pressure in bar

//At 0.1 bar, from steam tables
hf=191.8;               //in kJ/kg
//ETArankine=(hg1-h2)/(hg1-hf2)
ETArankine=(h12)/(h1-hf);
Wuse=h12;               //useful work done per kg of steam in kJ/kg
ssc=1/Wuse*3600;        //specific steam consumption

printf('(i) The Rankine efficiency is: %1.4f or %2.2f percent. \n',ETArankine,(ETArankine*100));
printf('(ii) The Specific steam consumption is: %1.3f kg/kWh. \n',ssc);
