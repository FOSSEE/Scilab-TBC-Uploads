clc;
//Exampkle 14.5
//page no 157
printf("Example 14.5 page no 157\n\n");
//air is transported through a circular conduit 
MW=28.9//molecular weight of air 
R=10.73//gas constant
T=500//temperature
P=14.75//pressure,psia
//applying ideal gas law for density
rho=P*MW/(R*T)//density 
rho=0.08//after round off
meu=3.54e-7//viscosity of air at 40 degF
//assume flow is laminar
q=8.33//flow rate ,ft^3/s
L=800//length of pipe,ft
P_1=.1//pressure at starting point
P_2=.01//pressure at delivery point 
D=[(128*meu*L*q)/(%pi*(P_1-P_2)*144)]^(1/4)//diameter
printf("\n pipe diameter D=%f ft",D);
//check the flow type
meu=1.14e-5
R_e1=4*q*rho/(%pi*D*meu)//reynolds no
//printf("\n reynolds no R_e=%f ",R_e);
//from R_e we can conclude that laminar flow is not valid
P_drop=12.96//pressure drop P_1-P2 in psf
f=0.005//fanning friction factor
g_c=32.174
D=(32*rho*f*L*q^2/(g_c*%pi^2*P_drop))^(0.2)//diamter from new assumption
//strat the second iteration with the newly calculated D
k=0.00006/12//roughness factor
K_r=k/D//relative roughness 
C_f=1.321224
R_e_n=4*q*rho/(%pi*D*meu)//new reynolds no
//printf("\n new reynolds no R_e=%f ",R_e);
f_n=0.0045//new fanning friction factor
D=[((8*rho*f_n*L*q^2)/(g_c*%pi^2*P_drop))^(0.2)]*C_f//final calculated diameter because last diameter is same with this
printf("\nD=%f ",D);
//iteration may now be terminated
S=%pi*(D^2)/4//cross sectional area of pipe
v=q/S//flow velocity
printf("\n flow velocity v=%f ft/s",v);//printing mistake in book in the value of meu in the formula of D is first time that's why this deviation in answer


