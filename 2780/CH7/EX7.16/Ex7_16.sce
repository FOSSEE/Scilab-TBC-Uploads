clc
//to calculate uncertainity in the energy
h=6.63*10^-34 //plank's constant in J-s
delt=2.5*10^-14 //uncertainity in time in s
delE=h/(2*%pi*delt*1.6*10^-19)
disp("minimum error with which the energy of the state can be measured is delE="+string(delE)+"ev")
