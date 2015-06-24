clc
clear
//DATA GIVEN
Ms=5.4;                //mass of steam used in kg/kWh
p=50;                  //pressure of steam in bar
Tsup=350;              //temp. of steam in deg celsius
eta=82;                //boiler efficiency in %
Tfw=150;               //feed water temp. in deg cel;sius
C=28100;               //calorific value of coal in kJ
rate=500;              //cost of coal/tonne in Rs

//boiler efficiency is given by, eta=Ms*(hsup-hf1)/(Mf*C)
//from steam table, at 45 bar and 350deg celsius, hsup=3068.4 kJ/kg
h=3068.4;                            //enthalpy at 45 bar and 350 deg celsius 
hf1=4.18*(Tfw-0);                    //hf1 at 150 deg celsius in kJ/kg

//subs. these in eq. of boiler efficiency
Mf=Ms*(h-hf1)/((eta/100)*C);         //mass of coal required in kg/kWh
cost=(Mf/1000)*rate*100;             //cost of coal in paisa/kWh

printf('  (i) The mass of coal required is: %5.3f kg/kWh. \n',Mf);
printf('  (ii) The Total cost of fuel(coal) is: %2.1f paisa/kWh. \n',cost);

//NOTE:in text book
//in question pressure is given as =50 bar
//but from steam table enthalpy is found at 45 bar
