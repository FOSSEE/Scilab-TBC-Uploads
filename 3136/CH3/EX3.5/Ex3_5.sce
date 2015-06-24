clear all; clc;
//This numerical is Ex 3_3E,page 46.
//the value given in the book for Um is 200.5,but on calculating the value comes out to be 200.3

r_t=24
r_h=10
N=1250
Q=53000

r_m=(0.5*(r_t^2+r_h^2))^0.5
printf("\n The mean radius rm is equal to %0.1f in",r_m)
disp("Converting to feet we have r_m equal to 1.53 ft")


//rm in feet equals 1.53
r_m=1.53
U_m=((N*%pi)/30)*r_m
printf(" Um = %0.1f ft/s",U_m)//the value given in the book for Um is 200.5,but on calculating the value comes out to be 200.3

A=(%pi*(r_t^2-r_h^2))/144
printf("\n The value of A is %0.1f ft^2",A)

//rounding off A to be 10.4
A=10.4
V_a2=Q/(A*60)
V_a1=V_a2
printf("\n V_a1=V_a2 %0.1f ft/s",V_a2)

beta_f1=(atan(U_m/V_a1))*180/%pi
beta_b1=beta_f1
printf("\n beta_b1=beta_f1 %0.1f degrees",beta_b1)


rho_w=62.4
rho_a=0.0762
g=32.2
H_w=2/12
disp("We know that g*Ha=(rho_w/rho_a)*g*H_w=U_mV_u2=Um*(U_m-V_a2*tan(beta_f2))")
disp("Hence we can find out the value of tan(ß_f2).Thus we can determine value of  ß_f2.")
//Let n=U_m*(U_m-V_a2*tan(beta_f2)) and m=(rho_w/rho_a)*g*H_w
m=(rho_w/rho_a)*g*H_w
//therefore tan_betaf2=(U_m-m/U_m)/V_a2
tanbeta_f2=(U_m-m/U_m)/V_a2
beta_f2=(atan(tanbeta_f2))*180/%pi
printf("\n Thus the value of ß_f2 is equal to %0.1f degrees",beta_f2)















