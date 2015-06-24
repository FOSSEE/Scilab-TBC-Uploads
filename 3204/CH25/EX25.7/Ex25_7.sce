// Initilization of variables
L_AD=8 // m // length of the beam
L_AB=2 // m 
L_BC=4 // m
L_CD=2 // m
UDL=1 // kN/m
P=2 // kN // point load at A
// Caalculations
// REACTIONS
// solving eqn's 1&2 using matrix to get R_B & R_C as,
A=[1 1;1 3]
B=[8;30]
C=inv(A)*B
// SHEAR FORCE
// the term F with suffixes 1 & 2 indicates SF just to left and right 
F_A=-P // kN
F_B1=-P // kN
F_B2=-P+C(1) // kN
F_C1=-P+C(1)-(UDL*L_BC) // kN
F_C2=-P+C(1)-(UDL*L_BC)+C(2) // kN
F_D=0
// BENDING MOMENT
// the term F with suffixes 1 & 2 indicates BM just to left and right
M_A=0 // kNm
M_B=(-P*L_CD) // kNm
M_C=(-P*(L_AB+L_BC))+(C(1)*L_BC)-(UDL*L_BC*(L_BC/2)) // kNm
M_D=0 // kNm
// LOCATION OF MAXIMUM BM
// Max BM occurs at E at a distance of 2.5 m from B i.e x=L_AE=4.5 m from free end A. Thus max BM is given by taking moment at B
L_AE=4.5 // m // given
M_E=(-2*L_AE)+(4.5*(L_AE-2))-((1/2)*(L_AE-2)^2) // kNm
// PLOTTING SFD & BMD
x=[0;1.99;2;4.5;5.99;6;8]
y=[-2;-2;2.5;0;-1.5;2;0]
a=[0;2;4.5;6;8]
b=[0;-4;-0.875;-2;0]
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
