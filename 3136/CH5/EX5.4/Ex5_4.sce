clear all; clc;

disp("Assume uniform axial flow at the inlet")
disp("(a) At the hub")
disp("V_a=15.5m/s")

omega=157
D_h=0.37
U_h=0.5*omega*D_h
printf(" Uh= %0.2f m/s",U_h)

disp("Vu2=(Vmu2*Dm)/Dh")
V_mu2=15
D_m=0.585
V_u2=(V_mu2*D_m)/D_h
printf(" Hence Vu2= %0.1f m/s",V_u2)

V_a=15.5
disp("tan(ß1)=(Uh/Va). Hence we can determine value of ß1")
//let x=Uh/Va
x=U_h/V_a
beta_1=(atan(x))*180/%pi
printf(" ß1= %0.1f degrees",beta_1)

disp("tan(ß2)=(Uh-Vu2)/Va")
//Let y=(Uh-Vu2)/Va
y=(U_h-V_u2)/V_a
beta_2=(atan(y))*180/%pi
printf(" ß2= %0.2f degrees \n",beta_2)

disp("(b) At the tip")

U_t=0.5*(157*0.74)
printf("\n Ut= %0.2f m/s",U_t)

V_u2=(15*0.585)/0.74
printf("\n Vu2= %0.2f m/s",V_u2)

//let p=atan(58.09/15.5)
p=(atan(58.09/15.5))*180/%pi
printf("\n ß1 = %0.0f degrees",p)

//let q=atan((58.09-11.86)/15.5)
q=atan((58.09-11.86)/15.5)*180/%pi
printf("\n ß2 = %0.3f degrees",q)
disp("On rounding off ß2=71.4")






