clc
//to calculate uncertainity in position
//actual formula is (delx)min*(delp)max=h/2*%pi-------------eq(1)
//(delp)max=p(momentum of the electron)
//mv=mov/sqrt(1-(v/c)^2)---------------------eq(2)
mo=9*10^-31 //mass of an electron in m/s
c=3*10^8 //light speed in m/s
v=3*10^7 //velocity in m/s  
h=6.6*10^-34 //plank's constant in J/s
//from eq(1) and eq(2),we get
delxmin=(h*sqrt(1-(v/c)^2))/(2*%pi*mo*v)
disp("smallest possible uncertainity in the position of an electron is delxmin="+string(delxmin)+"m")
