clc
//to calculate wavelength of Kalpha line for an atom
R=1.1*10^5
z=92
//Ka line is emitted when electron jumps from l shell(n2=2) to k shell(n1=1)
//formula is 1/alphaa=R*(z-b)*((1/n1^2)-(1/n2)^2)
alphaa=4/(3*R*(z-1)^2)
disp("wavelength of Kalpha line for an atom is alphaa="+string(alphaa)+"cm")
