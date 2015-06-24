// Initilization of variables
L_AB=3 // m // length of the beam
L_AC=1 // m
L_BC=2 // m
M_C=12 // kNm // clockwise moment at C
// Calculations
// REACTIONS
R_B=M_C/L_AB // kN // moment at A
R_A=-M_C/L_AB // kN // moment at B
// S.F
F_A=R_A // kN 
F_B=R_A // kN
// B.M
M_A=0 // kNm
M_C1=R_A*L_AC // kNm // M_C1 is the BM just before C
M_C2=(R_A*L_AC)+M_C // kNm // M_C2 is the BM just after C
M_B=0 // kNm
// Plotting SFD & BMD
x=[0;0.99;1;3]
y=[-4;-4;-4;-4]
a=[0;0.99;1;3]
b=[0;-4;8;0]
subplot(221)
xlabel("Span (m)")
ylabel("Shear Force (kN)")
plot(x,y)
subplot(222)
plot(a,b)
xlabel("Span (m)")
ylabel("Bending Moment (kNm)")
// Results
clc
printf('The graphs are the solutions')
