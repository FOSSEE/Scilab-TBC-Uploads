// Example 7.11
// Calculation for an Unbalanced Delta Load
// From figure 7.29(a) , Given Parameters
V_l=900;
Z_aA=5;
Z_bB=5;
Z_cC=5;
Z_AB=30;
Z_BC=complex(60,60);
Z_CA=complex(0,30);
// Applying Delta-wye Transform equations
Z_sum= Z_AB +Z_BC+Z_CA;
Z_A= (Z_AB*Z_CA)/Z_sum;
Z_B= (Z_BC*Z_AB)/Z_sum;
Z_C= (Z_BC*Z_CA)/Z_sum;
// Adding 5-Ohm series resistance in each line gives the total equivalent wye 
// Impedance
Z_a=Z_A+5;
Z_b=Z_B+5;
Z_c=Z_C+5;
// V_ab is taken as a phase reference
V_ab=complex(V_l,0);
V_bc_m=V_l;
phase_bc=-120;
x_bc=V_bc_m*cos(phase_bc*(%pi/180));
y_bc=V_bc_m*sin(phase_bc*(%pi/180));
V_bc=complex(x_bc,y_bc);
Z=[Z_a+Z_b,-Z_b;-Z_b,Z_b+Z_c];
V=[V_ab;V_bc];
I=Z\V;
I_1=I(1);
I_2=I(2);
// From equation 7.54(b) in textbook
I_a=I_1;
I_b=I_2-I_1;
I_c=-I_2;
P=real(Z_a)*abs(I_a)^2+real(Z_b)*abs(I_b)^2+real(Z_c)*abs(I_c)^2;
Q=imag(Z_a)*abs(I_a)^2+imag(Z_b)*abs(I_b)^2+imag(Z_c)*abs(I_c)^2;
pf=P/sqrt(P^2+Q^2);
disp(I_a,"Line current in branch a(in Amps)=")
disp(I_b,"Line current in branch b(in Amps)=")
disp(I_c,"Line current in branch c(in Amps)=")
disp(P,"Real power supplied by generator(in Watts)=")
disp(Q,"Reactive Power supplied by generator(in VAr)=")
