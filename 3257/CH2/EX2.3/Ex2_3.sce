// Calculation of modulus resilience from hardness
clc
h = 400 // hardness of specimen in HB
E = 205e3 // Youngs modulus of steel in MPa
g = 9.8 // gravitational acceleration in m/s^2
printf("\n Example 2.3")
Y = h*1e6*g/3 //   As, Hardness = c*Y 
m_r = (Y/1e6)^2/(2*E) // modulus of resilience

printf("\n Modulus of resilience of body is %.2f Nm/m^3.", m_r)
// while numerical value of answer in book is 4.17

