clc
// Given that
m = 15000 // Initial mass of rocket in kg
m_b = 125 // Burning rate of propellent in kg/s
v = 2000 // Relative velocity of gases with respect to the rocket in m/s
T = 70 // Time in second
printf("\n Example 21.7\n")
V = (-v*log(1-(m_b*T/m)))-(9.81*T)
function y=f(t),y = (-v*log(1-(m_b*t/m))-9.81*t),
endfunction
h1 = intg(0,T,f)
h2 = (V^2)/(2*9.81)
hmax = h2 + h1
printf("\n Velocity attain by the rocket in 70 seconds = %f m/s ,\n The maximum height that the rocket will attain = %f km",V,hmax*0.001)
