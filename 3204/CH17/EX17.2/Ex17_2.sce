// Initiliation of variables
m_g=3000 // kg // mass of the gun
m_s=50 // kg // mass of the shell
v_s=300 // m/s // initial velocity of shell
s=0.6 // m // distance at which the gun is brought to rest
v=0 // m/s // initial velocity of gun
// Calculations
// On equating eq'n 1 & eq'n 2 we get v_g as,
v_g=(m_s*v_s)/(-m_g) // m/s
// Using v^2-u^2=2*a*s to find acceleration,
a=(v^2-v_g^2)/(2*s) // m/s^2
// Force required to stop the gun,
F=m_g*(-a) // N // here we make a +ve to find the Force
// Time required to stop the gun, using v=u+a*t:
t=(-v_g)/(-a)  // seconds // we take -a to consider +ve value of acceleration
// Results
clc
printf('The recoil velocity of gun is %f m/s \n',v_g)
printf('The Force required to stop the gun is %f N \n',F)
printf('The time required to stop the gun is %f seconds \n',t)
