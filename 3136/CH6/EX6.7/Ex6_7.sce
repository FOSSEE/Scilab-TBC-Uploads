clear all; clc;

disp("Inlet Configuration selection: Mr1,t=0.75 and ßf1=25 degrees")
M_r1t=0.75
beta_f1=25*%pi/180
M_1t=M_r1t*sin(beta_f1)
printf(" M_1t=%0.3f",M_1t)

disp("T1=To1/(1=((k-1))*(M_lt^2)/2")
T1=530/(1+0.2*(0.317^2))
printf("\n Thus the value of T1= %0.1fR",T1)

a1=(1.4*53.33*32.2*519.6)^0.5
printf("\n a1= %0.2f ft/s",a1)//answer provided here is more accurate 

V_1t=0.317*1117.6
printf("\n V1=%0.1f ft/s",V_1t)

W_1t=0.75*1117.6
printf("\n W_1t= %0.1f ft/s",W_1t)

U_1t=[(838.2^2)-(354.3^2)]^0.5
printf("\n U_1t= %0.1f ft/s",U_1t)

omega=1623
U_1t=759.6
r_1t=U_1t/omega
printf("\n So we have r_1t= %0.3f ft=5.6in",r_1t)

//let x=k/k-1
x=3.5
po1=14.7
T_1=519.6
T_o1=530
p1=po1*[(T_1/T_o1)^x]
printf("\n So we have p1= %0.1f psia",p1)

p1=13.7
R=53.33
T1=519.6
rho1=(p1*144)/(R*T_1)
printf("\n rho1= %0.4f lbm/ft^3",rho1)

m=17
rho1=0.0713
V1=354.3
A1=m/(rho1*V1)
printf("\n A1= %0.3f ft^2=96.9 in ^2,assuming uniform inlet flow.\n\n",A1)

disp("From pi*[(r_1t^2)-(r_1h^2)]=A1")
disp("We have r_1h={[(r_1t^2)-A1]/pi}^0.5=0.72 in")
disp("U_1h=97.0 ft/s")

disp("ß_f1,h=taninverse(V_1h/U_1h)")
V_1h=354.3
U_1h=97
beta_f1h=(atan(V_1h/U_1h))*180/%pi
printf(" ßf1= %0.1f degrees",beta_f1h)

disp("(B) Outlet Configuration From")

Cp=0.24
To1=530
//let y=(k-1)/k=0.2857
y=0.2857
//let m=po2/po1
m=2.5
H_ad=Cp*To1*778*[(m)^(y)-1]
printf(" H_ad=H_ad=Cp*To1*778[(po2/po1)^((k-1)/k)-1] %0.0f ft-lbf/lbm ",H_ad)

m=17
rho1=0.0713
Q1=m/rho1
printf("\n Q1=%0.1f ft^3/s",Q1)

N=15500
H_ad=29614
Q1=238.4
Ns=N*(Q1^0.5)/((H_ad)^0.75)
printf("\n We obtain specific speed %0.0f rpm*{(ft^3/s)^0.5}(ft-lbf/lbm)^0.75 ",Ns)

disp("Fom figure 6.7 we have estimated Eta_c=0.87 and Ds=D2*(H_ad)/(Q1^0.5)=1.50")
D2=1.5*(238.4^0.5)/(29614^0.25)
printf("\n D2=%0.4f ft=21.2 inches or r2=10.6 in. and U2=r2*omega=1433.7 ft/s",D2)

disp("Referring to figure 6.16c,we have T_sso3=T_o1*(po3/po1)^((k-1)/k)")
//((k-1)/k)=x
x=0.2857
T_o1=530
//let l=po3/po1
l=2.5
T_sso3=T_o1*(l^x)
printf(" T_sso3= %0.1f R ",T_sso3)
disp("From Eta_c=(T_sso3-(T_o1))/(To3-To1) we have To2=To3")
//let l=To2/To3
l=(1/0.87)*(688.6-530)+530
printf(" To2/To3 %0.1fR",l)
disp("Also from Etam=U2*Vu2/[Cp*(T_o2-T_o1)]")

Vu2=0.95*0.24*778*32.2*(712.3-530)/(1433.7)
printf(" With the estimated Eta_m=0.95,Vu2=%0.1f ft/s",Vu2)

disp("Flow coefficient φ=Vm2/U2=0.30 ")
Vm2=0.3*1433.7
printf(" Vm2=%0.1f ft/s",Vm2)

disp("W2=[Vm2^2+(U2-Vu2)^2]^0.5=827.9 ft/s")
disp("V2=[Vu2^2+Vm2^2]^0.5=844.1 ft/s")

W1t=838.2
W2=827.9
Df=W1t/W2
printf(" Hence we have diffusion factor Df=%0.3f. The value is less than 1.9 which is okay.",Df)

disp("The impeller efiiciency can be estiamted form the losses fraction X=(1-Eta_imp)/(1-Eta_c) is approximately =0.6 ")
Eta_imp=1-0.6*(1-0.87)
printf("\n Eta_imp %0.3f",Eta_imp)

disp("Hence from Eta_imp=(T_so2-T_o1)/(T_o2-T_o1),we have T_so2=T_o1+Eta_imp*(To2-T_o1)=698R and po2=po1*(T_so2/T_o1)^(k/(k-1))")
po1=14.7
T_so2=698.1
T_o1=530
//Let x=(k/(k-1))
x=3.5
po2=po1*(T_so2/T_o1)^x
printf(" po2=%0.2f psia ",po2)

disp("Then from the energy equation we have T2=T_o2-V2^2/(2*Cp)=653.0R")
disp("Hence p2=p02*(T2/To2)^(k/(k-1))=28.4psia and rho2=p2/(R*T2)=0.117lbm/ft^3")

disp("Selecting Zb=16 and using the Stanitz fromula for the slip coefficient we have Vdash_u2=Vu2+0.63*pi*U2/Zb")
Vu2=726.3
U2=1433.7
Zb=16
 Vdash_u2=Vu2+0.63*%pi*U2/Zb
printf(" Vdash_u2= %0.1f ft/s",Vdash_u2)

disp("tanß_b2=Vm2/(U2-Vdash_u2)")
Vm2=430.1
U2=1433.7
Vdash_u2=903.6
tan_beta_b2=Vm2/(U2-Vdash_u2)
printf(" tanß_b2=%0.2f ",tan_beta_b2)

betab2=(atan(tan_beta_b2))*180/%pi
printf("\n ß_b2= %0.0f degrees",betab2)

disp("With blade thickness t=0.15,contraction factor is determined")
Zb=16
t=0.15
betab2=39*%pi/180
D2=21.3
epsilon2=1-[(Zb*t)/(sin(betab2))]/(%pi*D2)
printf(" Thus epsilon2= %0.2f",epsilon2)

disp("Hence from the mass equation we can determine b2")
b2=17/(0.117*430.1*%pi*1.765*0.94)
printf(" b2=%0.4f=0.7 8inch",b2)



































