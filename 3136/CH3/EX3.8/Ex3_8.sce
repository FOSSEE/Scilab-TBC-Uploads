clear all; clc;
//This numerical is Ex 3_4S,page 50.
//the value of deltaE2 slightly differs from the value given in the book. However the calculated value is correct for te given substitutions

N=120
r_1=54.8
b_1=9.1

omega=(N*%pi)/30
printf("\n Omega is equal to %0.3f rad/s",omega)

U_1=r_1*omega/100
printf("\n U_1 is equal to %0.1f m/s",U_1)

r_m2=(0.5*(30.5^2+ 12.2^2))^0.5

U_2=r_m2*omega/100
printf("\n U_2 is equal to %0.2f m/s",U_2)

A_1=2*%pi*r_1*b_1/10000
printf("\n A1 is equal to %0.3f m^2",A_1)

r_t2=30.5
r_h2=12.2
b_2=15.2
A_2=%pi*(r_t2+r_h2)*b_2/10000
printf("\n A_2 is equal to %0.3f m^2",A_2)

disp("Assume swirl free flow at discharge that is V_u2=0 and ß_f1=ß_b1, ß_f2=ß_b2.")

V_m2=U_2*tan(15*(%pi/180))
printf("\n So V_m2=U_2tan15 is equal to %0.3f m/s",V_m2)
disp("Thus now we can determine Q")

Q=V_m2*A_2
disp("Q=V_m2*A_2=V_r1*A_1")
printf("\n Thus Q is equal to %0.3f m^3/s",Q)

disp("Since the value of Q,A_1 is known,we can determine the value of V_r1")
Q=0.159
V_r1=Q/A_1
printf(" The value of V_r1 is equal to %0.4f m/s",V_r1)//actual values are taken,hence a 0.0005 difference in answer is observed

beta_f1=27//ßf1
V_r1=0.508//rounding off Vr1
W_u1=V_r1/tan((beta_f1*%pi)/180)
printf("\n W_u1 is equal to %0.4f m/s",W_u1)

W_u1=0.997//rounding off
U_1=6.9//rounding off
V_u1=U_1-W_u1
printf("\n The value of V_u1 is %0.2f m/s",V_u1)//0.02 difference obtained because of substituting the values as they ahve been found out


V_u1=5.92//as substituted in the book
delta_Et=U_1*V_u1
printf("\n deltaEt is equal to %0.2f m^2/s^2",delta_Et)//

m=998*0.782*0.204
P_s=m*delta_Et
printf("\n Thus P_s is equal to %0.0f W",P_s)
disp("Converting P_s to kW we get 6.503kW")


















