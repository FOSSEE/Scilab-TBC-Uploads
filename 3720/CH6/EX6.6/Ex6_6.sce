//Example 6_6
clc;clear;
// Given values
m_f=100;// kg
V_f=3000;//Velocity of solid fuel in m/s
dt=2;// seconds
m_sat=5000;// kg

// Calculation
//(a)
a_sat=((m_f/dt)*V_f)/m_sat;
printf("The acceleration of the satellite during the first 2 s=%0.0f m/s^2\n",a_sat);
//(b)
dV_sat=a_sat*dt;
printf("The change of velocity of the satellite=%0.0f m/s\n",dV_sat);
//(c)
F_sat=(0-(m_f/dt)*(-V_f))/1000;
printf("The thrust exerted on the satellite=%0.0f kN\n",F_sat);
