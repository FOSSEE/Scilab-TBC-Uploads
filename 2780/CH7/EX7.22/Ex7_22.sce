clc
//to calculate probability of finding the particle
a=25*10^-10//width in angstrom 
//wave function of the particle is chi(x)=sqrt(2/a)*sin(n*%pi*x/a),for the particle in the least energy state n=1
chix=sqrt(2/a)*sin(%pi*(a/2)/a)
delx=5*10^-10 //interval in angstrom
P=delx*chix^2
disp("probability of finding the particle is P="+string(P)+"unitless")
