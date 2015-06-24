clc
//to calculate uncertainity in frequency
//delE*delt=h/2*%pi----eq(1)
//delE=h*delv-----------eq(2)
delt=10^-8 //uncertainity in time in s
//from eq(1) and eq(2),we get
delnu=1/(2*%pi*delt)
disp("minimum uncertainity in the frequency of the photon is delv="+string(delnu)+"sec^-1")
