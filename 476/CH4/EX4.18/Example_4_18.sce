//A Textbook of Chemical Engineering Thermodynamics
//Chapter 4
//Second Law of Thermodynamics
//Example 18


clear;
clc;

//Given:
m_oil = 5000; //mass flow rate of hydrocarbon oil (kg/h)
Tin_oil = 425; //inlet temperature of oil (K)
Tout_oil = 340; //exit temperature of oil (K)
m_water = 10000; //mass flow rate of water (kg/h)
Tin_water = 295; //inlet temperature of water (K)
c_oil = 2.5; //mean specific heat of oil (kJ/kg K)
c_water = 4.2; //mean specific heat of water (kJ/kg K)

//To determine total change in entropy and available work

//(a)
//By energy balance
Tout_water = ((m_oil*c_oil*(Tin_oil-Tout_oil))/(m_water*c_water))+295; //exit temperature of water (K)
S_oil = m_oil*c_oil*log(Tout_oil/Tin_oil); //change in entropy of oil (kJ/K)
S_water = m_water*c_water*log(Tout_water/Tin_water); //change in entropy of water (kJ/K)
S_tot = S_oil+S_water; //total entropy change
mprintf('The total entropy change is %f kJ/K',S_tot);


//(b)
To = 295; //temperature at which heat is rejected to surrounding (K)
//Let Q be heat given out by the oil on cooling
Q = m_oil*c_oil*(Tin_oil-Tout_oil);
//Heat rejected to the surrounding at To by the Carnot Engine is given by
//Q2 = To(Q/T) = -To*S_oil
Q2 = -To*S_oil; //(kJ)
//Let W be the work output of engine
W = Q-Q2;
mprintf('\nThe work output of the engine would be %4.3e kJ', W);

//end