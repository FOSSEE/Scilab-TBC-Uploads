//A Textbook of Chemical Engineering Thermodynamics
//Chapter 4
//Second Law of Thermodynamics
//Example 16


clear;
clc;

//Given:
m_oil = 5000; //mass flow rate of oil (kg/h)
Tin_oil = 500; //inlet temperature of oil (K)
Tin_water = 295; //inlet temperature of water (K)
c_oil = 3.2; //specific heat of oil (kJ/kg K)
c_water = 4.2; //specific heat of water (kJ/kg K)

//To calculate entropy change in the process

//Assuming oil is cooled to minimum permissible temperature
Tout_oil = 305; //exit temperature of oil (K)
Tout_water = 490; //exit temperature of water (K)

//Let m_water be the mass flow rate of water
//By enthalpy balance
m_water = ((m_oil*c_oil*(Tin_oil-Tout_oil))/(c_water*(Tout_water-Tin_water)));  //(kg/h)
S_oil = m_oil*c_oil*log(Tout_oil/Tin_oil); //entropy change of oil (kJ/K)
S_water = m_water*c_water*log(Tout_water/Tin_water); //entropy change of water (kJ/K)
S_tot = S_oil+S_water; //total entropy change
mprintf('The total entropy change in the process is %f kJ/K',S_tot);

//end 