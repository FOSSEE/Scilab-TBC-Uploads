// Exa 5.17
clc;
clear;
close;
format('v',7)
// Given data
V_L = 400;// in V
f = 50;// in Hz
W1 = 8000;// in W
W2 = 4000;// in W
W = W1+W2;// in W
phi =(atand( sqrt(3)*((W1-W2)/(W1+W2)) ));// in lag
P = W;// in W
//P = sqrt(3)*V_L*I_L*cosd(phi);
I_L = P/(sqrt(3)*V_L*cosd(phi));// in A
V_Ph = V_L/sqrt(3);// in V
I_Ph = I_L;// in A
Z_Ph = V_Ph/I_Ph;// in  ohm
Z_Ph= Z_Ph*expm(phi*%i*%pi/180);// ohm
R_Ph= real(Z_Ph);// in ohm
XL_Ph= imag(Z_Ph);// in ohm
L_Ph= XL_Ph/(2*%pi*f);// in H
// power factor
pf= cosd(phi);
disp(pf,"The power factor is : ")
disp(I_L,"The line current in A is");
disp(Z_Ph,"The impedance of each phase in Ω is : ")
disp(R_Ph,"The resistance of each phase in Ω is : ")
disp(L_Ph,"The inductance of each phase in H is : ")
