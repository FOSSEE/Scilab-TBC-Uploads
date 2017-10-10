// Example 2_4
clc;funcprot(0);
// Given data
m_pendulum=5.0;// The mass of the pendulum in kg
m_projectile=0.01;// The mass of the projectile in kg
g=9.81;// The acceleration due to gravity in m/s^2
R=1.5;// The length of the pendulum support cable in m
theta=15;// degree

// Solution
V_projectile=(1+(m_pendulum/m_projectile))*(2*g*R*[1-cosd(theta)])^(1/2);// The muzzle velocity in m/s
printf('\nThe muzzle velocity,V_projectile=%1.0e m/s',V_projectile);
