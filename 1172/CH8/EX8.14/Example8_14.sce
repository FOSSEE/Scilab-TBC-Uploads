clc
//Given that
h = 600 // distance of satellite from surface of Earth in km
R_e = 6400 // radius of Earth in km
m_s = 100  // mass of satellite in kg
g = 10 // gravitational acceleration in m/s2 
v_y = 2500 // upward velocity of launched satellite
// sample problem 14 page No. 306
printf("\n\n\n # Problem 14 # \n")

printf("\n Standard formula used 1/2 *(m_s * v ^2 / r) = g * R_E^2 * m /R_e^2 ")
r = R_e + h// calculation of effective height of satellite

v = sqrt (g * (R_e * 1e3)^2 / (r * 1e3)) // calculation of orbital velocity of satellite

P_x = m_s * v// calculation of momentum in x direction
P_y = m_s * v_y// calculation of momentum in y direction
U = sqrt(P_x^2 + P_y^2 ) // calculation of magnitude of impulse required

theta = (180 / %pi) * atan (P_y / P_x ) // calculation of direction of impulse required
printf ("\n Magnitude and direction of impulse required are respectively %ekgm/s and %f degree.",U , theta)
