clear all; clc;
//This numerical is Ex 3_3S,page 46.

r_t=0.6
r_h=0.25
N=1250
Q=1500

r_m=(0.5*(r_t^2+r_h^2))^0.5
printf("\n The mean radius rm is equal to %0.2f in. ",r_m)

U_m=((N*%pi)/30)*r_m
printf(" On converting,U_m = %0.1f m/s",U_m)

A=(%pi*(r_t^2-r_h^2))
printf("\n The value of A is %0.4f m^2",A)


V_a2=Q/(A*60)
V_a1=V_a2
printf("\n V_a1=V_a2 %0.1f m/s",V_a2)

beta_f1=(atan(U_m/V_a1))*180/%pi
beta_b1=beta_f1
printf("\n beta_b1=beta_f1 %0.1f degrees",beta_b1)


rho_w=998
rho_a=1.22
g=9.8
H_w=5/100
U_m=60.2//rounding off Um
disp("We know that g*H_a=(rho_w/rho_a)*g*H_w=U_mV_u2=U_m*(U_m-V_a2*tan(beta_f2))")
disp("Hence we can find out the value of tanbet_f2")
//Let n=U_m*(U_m-V_a2*tan(beta_f2)) and m=(rho_w/rho_a)*g*H_w
m=(rho_w/rho_a)*g*H_w
//therefore tanbeta_f2=(U_m-m/U_m)/V_a2
tanbeta_f2=(U_m-m/U_m)/V_a2
beta_f2=(atan(tanbeta_f2))*180/%pi
printf("\n Thus the value of beta_f2 is equal to %0.1f degrees",beta_f2)















