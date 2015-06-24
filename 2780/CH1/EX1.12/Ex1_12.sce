clc
//to calculate velocity of beta particle
c=3*10^8 //light velocity(m/s)
u1=0.9*c //velocity of the beta particle relative to the atom in the direction of motion
v=0.25*c //velocity of the radioactive atom relative to an experimenter
u=(u1+v)/(1+u1*v/c^2)  
disp(" velocity of the beta particle as observed by the experimenter is u="+string(u)+"m/s")
//answer is given in terms of c in the book =0.94c
