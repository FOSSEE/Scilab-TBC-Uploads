//resistance of line (ohm/m)
R=0.015
//operating frequency(Hz)
n=1.6*10^9
//angular frequency
w=2*%pi*n
//inductance of line(H/m)
L=0.002*10^(-6)
//conductance of line(S/m)
G=0.1*10^(-3)
//capacitance of line(F/m)
C=0.012*10^(-12)
printf("\nR=0.015ohm/m\tn=1.6GHz\tL=0.002uH/m\tG=0.1mS/m\tC=0.012pF/m\n")
//formulas and result
printf("\nimpedance Z=R+iwL=")

Y=complex(G,w*C)    //admittance per unit length
Z=complex(R,w*L)     //impedance per unit length
disp(Z)
printf("ohm/m\nadmittance Y=G+iwC=")
disp(Y)
printf("S/m\nZo=square root(Z/Y)=")
disp(sqrt(Z/Y))
printf("ohm")







