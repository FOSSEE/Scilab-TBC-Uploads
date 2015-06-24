// Scilab code Exa 5.7.4 : To calculate the  frequency of the scattered photon  Page.no. 234 (2011)
h = 6.626e-034; // Value of Planck's constant, J
m_e = 9.11e-031; // Mass of the electron,Kg
c = 3e+08; // Velocity of light, pm/s
A = 60; // Angle between scattered radiation and incident radiation, degree
v_0 = 3.2e+019; // Frequency of the incident photon, Hz
V = 1/v_0 + h/(m_e*c^2)*(1-cosd(A)); 
v =(1/V); // Frequency of the scattered photon, Hz
printf("\n Frequency of the scattered photon: %4.2e Hz", v )
// Result
//       Frequency of the scattered photon: 2.83e+019 Hz