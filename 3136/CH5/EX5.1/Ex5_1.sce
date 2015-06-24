clear all; clc;

disp("From figure 5.3a, we have Cl=0.36, Cd=0.017 and alpha=1.8 degrees at maximum L/D")

N=3500
C_l=0.36
alpha=1.8 
C_d=0.017
r_t=13.25
r_h=3.25
Zb=7
Q=11560//cfm
gamma_1=70
alpha=1.8

A=%pi*(r_t^2-r_h^2)
printf("\n A is equal to %0.1f in^2",A)
disp("On converting it in terms of feet we have A= 3.6 ft^2")

r_m=[0.5*(r_t^2+r_h^2)]^0.5
printf("\n rm is equal to %0.2f in",r_m)
disp("On converting it in terms of feet we have rm=0.804 ft ")

r_m=0.804//in feet
U_m=(N*%pi*r_m)/30
printf("\n Um is equal to %0.1f ft/s",U_m)

r_m=9.65//in inches
s=(2*%pi*r_m)/Zb
printf("\n s= %0.2f in",s)

disp("Va=V1=Q/A")

A=3.6//in square feet 
V_1=Q/(A*60)//divided by 60 to get answer in terms of ft/s
printf("\n V1=Va= %0.2f ft/s",V_1)

U_m=294.7//rounded off
V_1=53.5//rounded off
beta_1=(atan(U_m/V_1))*180/%pi
printf("\n ß1= %0.1f degrees",beta_1)

beta_m=gamma_1+alpha
printf("\n ßm= %0.1f degrees",beta_m)

disp("From tanßm=(tanß1+tanß2)/2 ,ß2=30.1 degrees; Then Wmcosßm=Va")
V_a=53.5//in ft/s
W_m=V_a/(cos(beta_m*%pi/180))
printf("\n So Wm= %0.1f ft/s",W_m)

W_m=171.3//rounded off
rho=0.0762/32.2
cm=3.5
s=8.66//rounded off
disp("hence we have deltapr=((rho*Wm^2)/2)*(cm/s)*(Cl*sin(betam*%pi/180)-Cd*cos(betam*%pi/180))")
delta_pr=((rho*W_m^2)/2)*(cm/s)*(C_l*sin(beta_m*%pi/180)-C_d*cos(beta_m*%pi/180))
printf("\n deltapr= %0.4f lb/ft^2 ",delta_pr)
disp("On rounding off we get deltapr= 4.73 lbf/ft^2")
disp("Thus deltapr=0.0328psia=0.91 in.wg")

disp("Across the stator, from the velocity diagram, we have Wu2=Va*tanß2 and V2=(Va^2+(Um-Wu2)^2)^0.5")

beta_2=30.1*%pi/180
V_a=53.5//rounded off
W_u2=V_a*tan(beta_2)
printf(" Thus Wu2 is equal to %0.0f ft/s",W_u2)

U_m=294.7//rounded off
V_2=(V_a^2+(U_m-W_u2)^2)^0.5
printf("\n V2= %0.0f ft/s",V_2)

disp("So assuming V_3=V_a")

V_a=53.5//rounded off
V_2=269//rounded off
eta_s=0.85//efficiency
rho=0.0762/32.2
delta_ps=(((eta_s*rho)/2)*(V_2^2-V_a^2))/144//144 is conversion factor
disp("delta_ps=(((etas*rho)/2)*(V2^2-Va^2))")
printf("\n deltaps is equal to %0.3f psia",delta_ps)
disp("On converting the unit deltaps = 1.12 ft which is equal to 13.44 inches of water")

















