clc
// Given that
p1 = 1.013 // Inlet pressure in bar
r = 1.5 // Pressure ratio
Vs = 0.03 // Induce volume of air in m^3/rev
gama = 1.4 
printf("\n Example 19.14\n")
p2 = p1*r
W = (p2-p1)*Vs*100
pi = (p1+p2)/2
A_A = (gama/(gama-1))*(p1*Vs)*((pi/p1)^((gama-1)/gama)-1)*100
Vb = Vs *((p1/pi)^(1/gama))
A_B = (p2-pi)*Vb*100
Wr = A_A + A_B
printf("\n Work input = %f kJ/rev,\n Work input for a vane-type compressor = %f kJ/rev",W,Wr)
// The answers given in the book vary due to round off error
 
