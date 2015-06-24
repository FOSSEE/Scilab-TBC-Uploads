//Example 21.2 // diamagnetic susceptibility 
clc;
clear;
//given data :
r=.53D-8;//(mean radius)bohr radius in cm
N=27D23;//atomic density in per cm2
k=2.8D-13//k=e2/mc2constants e-electron m-mass c=speed of light in cm
X=-2*(N*k/6)*r^2;//formula for 2 electrons
disp(X,"diamagnetic susceptibility of helium atom")
