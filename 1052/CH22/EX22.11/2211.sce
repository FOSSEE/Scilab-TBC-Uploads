clc;
//Example 22.11
//page no 308
printf("Example 22.11 page no 308\n\n");
//a storage tank on top of a building pumps 60 deg F water through an open pipe to it from a reservoir 
q=1.36//vol. flow rate ,ft^3/s
D=0.333//diameter of pipe,ft
S=%pi/4*D^2//cross sectional area,ft^2
v2=q/S//flow velocity,ft/s
rho=62.37//density of water,lb/ft^3
meu=1.129*6.72e-4//viscosity of water
R_e=D*v2*rho/meu//reynolds no.
printf("\n reynolds no. R_e=%f",R_e );
//from R_e we can conclude that flow is turbulent
k=0.0018//roughness factor
K_r=k/D//relative roughness
f=0.0046//friction factor
L=525//length of pipe,ft
g_c=32.174//grav. acc
h_fp=(4*f*L*v2^2)/(D*2*g_c)//frictional loss due to the length of pipe
printf("\n frictional loss h_fp=%f ft.lbf/lb",h_fp);
//friction due to the fitings from table 18.1
K_ff_gate=2*0.11//loss coeff. due to gates
K_ff_elbows=5*0.64//loss coeff. due to elbows
//friction due to the sudden contraction is obtained from eq. 18.10 .
//note that D1/D2=0,since the upstream diameter is singnificantly larger than the downward diameter 
K_c=0.42//coeff. of sudden contraction
K_e=1//coeff. of sudden expansion
K_s=K_ff_gate +K_ff_elbows +K_e +K_c//sum of loss coeff.
h_f=K_s*v2^2/(2*g_c)//friction losses due to fitting,expansion,contraction
h_f_total=h_fp + h_f//total frictional losses
printf("\n total frictional loss h_f_total=%f ft.lbf/lb",h_f_total);
v1=0
P_drop=0//pressure drop
z1=0//reservoir water level
z2=200//height of reservoir
W_s=(v2^2-v1^2)/(2*g_c)  + (z2-z1)  + h_f_total//power requirement
m_dot=q*rho//mass flow rate,lb/s
neta=0.6//efficiency of pump
W_dot_s=m_dot*W_s/(550*neta)//actual horsepower requirement
printf("\n W_dot_s=%f hp",W_dot_s);
