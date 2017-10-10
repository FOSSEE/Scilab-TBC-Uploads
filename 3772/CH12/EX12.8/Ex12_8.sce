// Problem no 12.8,Page No.292

clc;clear;
close;

L=8 //m //span
W=24*10**3 //N/m //U.D.L
y=2*10**-2 //m //deflection
E=20*10**9
I=10**-5 //m**4

//Calculations

//The Downward deflection at C Due to u.d.l
//Y_c=5*W*L**3*(384*E*I)**-1

//The Upward Deflection at C due to prop Reaction P 
//Y_c_1=P*L**3*(48*E*I)**-1

//Since the prop is at the same level as end supports
//Y_c_1=Y_c
P_1=5*W*8**-1*10**-3 //KN

//The reaction at A and B is equal
R_a=(24-15)*2**-1
R_b=R_a;
//Shear Force at B
V_B=4.5 //KN

//Shear Force at C
V_C1=4.5-24*2**-1
V_C2=4.5-24*2**-1+15

//Shea rForce at A
V_A=-4.5 //KN

//B.M at C due to u.d.l
M_C1=W*L*8**-1*10**-3 //KN*m

//B.M due to only prop reaction P=15 KN
P=15
M_C2=-P*L*4**-1 //KN*m

//B.M at D
M_D=4.5*1.5-24*8**-1*1.5**2*2**-1

//In second case prop sinks by 2 cm
//Y_c-Y_c_1=2 

//So Further simplifying and sunstituting values in above equation we get
P=-(2*100**-1-(5*W*L**3*(384*E*I)**-1))*(L**3*(48*E*I)**-1)**-1

//Let Each end reaction be X
X=(24-14.625)*2**-1

//Result
printf("prop reaction is %.2f",P_1);printf(" KN")
printf("\n The End Reaction is %.2f",X);printf(" KN")

//Plotting the Shear Force Diagram
subplot(2,1,1)
X1=[0,4,4,8,8]
Y1=[V_B,V_C1,V_C2,V_A,0]
Z1=[0,0,0,0,0]
plot(X1,Y1,X1,Z1)
xlabel("Length x in m")
ylabel("Shear Force in kN")
title("the Shear Force Diagram")

//Plotting the Bendimg Moment Diagram
subplot(2,1,2)
X2=[0,4,4]
Y2=[0,M_C1,0]
Z2=[0,0,0]
plot(X2,Y2)
xlabel("Lenght in m")
ylabel("Bending Moment in kN.m")
title("the Bending Moment Diagram")
