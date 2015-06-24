clear all; clc;

disp("a)")
disp("Convert: 1) Q=5 m^3/s=10595 cfm")
disp("2) rhoa=0.0761lbm/ft^3")

disp("3) SP=deltap/(rhow*g)")
delta_ps=500
rho_w=1000
g=9.8
SP=delta_p/(rho_w*g)
printf("Hence SP = %0.3f m",SP)
disp("Thus SP= 2.01 in.wg.")

disp("b)")
disp("Calculating the specific speed:Ns")
N_s=1500*((10575)^0.5)/(2.01)^0.75
printf("The value of Ns is equal to %0.2f rpm*(cfm^0.5)/(in of water^0.75)",N_s)

N=1500
omega=N*%pi/30
printf("\nOmega = %0.0f rad/s",omega)

omega_s=157*(5^0.5)/((500/1.22)^0.75)
printf("\nSo omegas = %0.2f ",omega_s)

disp("From figure 5.10b,we select v=Dh/Dt=0.5 and the blade number Zb=6*v/(1-v)")
v=0.5
Zb=6*v/(1-v)
printf("Hence Zb= %0.2f",Zb)

disp("From figure 2.2,the specific diameter obtained as deltas is approximately equal to 1.5")
D_t=1.5*(5^0.5)/((500/1.22)^0.25)
printf("\nHence Dt = %0.3f m",D_t)

v=0.5
D_t=0.74//rounded off
D_h=v*D_t
printf("\nDh= %0.2f m",D_h)

A=%pi*(D_t^2)*(1-v^2)/4
printf("\nAlso A = %0.4f m^2",A)

D_m=((D_t^2+D_h^2)/2)^0.5
printf("\nDm = %0.4f m",D_m)

A=0.322//rounded off
Q=5
V_a=Q/A
printf("\nVa= %0.1f m/s",V_a)

U_m=omega*D_m/2
printf("\nUm = %0.2f",U_m)

V_a=15.5//rounded off
PHI_m=V_a/U_m
printf("\nPHIm = %0.3f",PHI_m)

disp("Now from figure 5.10c we can obtain Phim*(s/c)=0.65")
//let s/c=x
PHI_m=0.337//rounded off
x=0.65/PHI_m
printf("\nThus (s/c)= %0.2f",x)

disp("Here s= pi*Dm/Zb")
s= %pi*D_m/Zb
printf("\n Thus s= %0.3f m",s)

disp("Assuming V1=V3=Va=15.5 m/s the total head can be calculated from g*Ht=deltaps/rho+Va^2/2")
//let y=g*Ht=deltaps/rho+(Va^2)/2
rho_a=1.22
y=delta_ps/rho_a+(V_a^2)/2
printf("\ng*Ht = %0.0f (m/s)^2",y)
disp("or TP=2.59 in.wg")

disp("c)")
ETA_h=0.77
V_u2=(y)/(ETA_h*U_m)//Since y=(g*Ht)
printf("\nVu2 is equal to %0.0f m/s",V_u2)

beta_1=(atan(U_m/V_a))*180/%pi
printf("\nß1= %0.2f degrees",beta_1)

beta_2=(atan(((U_m-V_u2)/V_a)))*180/%pi
printf("\n ß2= %0.2f degrees",beta_2)

//let m=tanßm=0.5*(tanß1+tanß2)
beta_1=71.3//rounded off
beta_2=63.4//rounded off
m=0.5*(tan(beta_1*%pi/180)+tan(beta_2*%pi/180))
printf("\ntanßm=0.5*(tanß1+tanß2) =%0.3f",m)
beta_m=(atan(m))*180/%pi
printf("\n ßm = %0.0f",beta_m)

disp("We know that Cl=2*(s/c)*(tanß1-tanß2)*cosßm")
x=1.93//rounded off
beta_1=71.3
beta_2=63.4
beta_m=68
//Let a=tanß1
//Let b=tanß2
//Letc=cosßm
a=tan(beta_1*%pi/180)
b=tan(beta_2*%pi/180)
c=cos(beta_m*%pi/180)
a=2.95//rounded off
b=2.0//rounded off
c=0.374//rounded off
Cl=2*x*(a-b)*c//Since x=(s/c)
 printf("\nCl= %0.2f ",Cl)
 
 disp("This is the cascade coefficient required.To use the isolated airfoil data,we obtain K=1.2 from figure 5.9 with gamma=60 degrees. Hence we can determine Cli")
 
 C_li=1.37/1.2
 printf("\nCli= %0.2f",C_li)

disp("d)")
disp("If NACA 4312 airfoil selection is selected,at Alpha=12 degrees,Cli=1.14 and Cl/Cd=L/D=12")
disp("Substituting the above mentioned data in Rr=Wmu/Um=phi*tan(ßm)")
phi=0.337
d=tan(beta_m*%pi/180)
R_r=phi*d
printf("\n Thus Rr= %0.3f",R_r)
disp("deltar is approximately=deltas is approximately=0.08")
Eta_h=0.337*(((0.834-(0.337*0.08))/(0.337+(0.08*0.834)))+((1-0.834-(0.337*0.08))/(0.337+(0.08*(1-0.834)))))
printf("\nETAh= %0.2f",Eta_h)
disp("Etah=0.80 is approximately equal to 0.77")
disp("Also gamma=betam-alpha=68-12=56 degrees")
disp("c=s/1.93")
c=s/1.93
printf("\nThus c = %0.2f m",c)

disp("e)")
disp("Double check the data obtained with those given in Figure 5.1.It is shown that Etas=0.74,Ds=0.35=c.")
SP=2.01
CFM=10595
Dt=0.35*(CFM^0.5)/(SP^0.25)
printf("\nHence the value of Dt= %0.1f in",D_t)
disp("On converting,Dt=0.77m")
disp("It is close to what we have. However, some alternative design maybe performed with the selection of a little higher hub-tip ratio v and other availabe airfoil sections")























