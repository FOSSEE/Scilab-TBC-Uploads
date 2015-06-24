clc
//to calculate frequency of vibration
En=0.1*1.6*10^-19 //energy of a linear harmonic oscillator in eV
n=3 //third excited state
h=6.63*10^-34 //planck's constant
nu=En/((n+(1/2))*h)
disp("the frequency of vibration is nu="+string(nu)+"Hz")
