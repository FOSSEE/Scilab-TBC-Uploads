clc;
//Example 18.6
//page no 230
printf("Example 18.6 page no 230\n\n");
k=0.00085//relative roughness of pipe ,ft
D=0.833//diameter  of pipe,ft
f=0.005//we assume fanning friction factor ,0.004-0.005,select upper limit
K=0.45//entrance loss coefficient is estimated from eq. 18.10 and 18.11
L=5000//length of pipe,ft
h_f=4*f*(L/D)//the friction head loss in terms of the line velocity
printf("\n h_f=%f ",h_f);//printing mistake in book 12 instead of 120
//applying bernoulli equation between points 1 and 2 to calculate v2
h_s=0//no shaft head
v1=0//large tank
//because both locations open to the atmosphere,P1=P2=0 psig
h=260//height from point 1 to 2
V2_h=sqrt(h/(1+h_f+K))//total velocity head at point 2
g=32.174
V2=V2_h*2*g
V2=11.75
neu=1.0825e-5//viscosity
R_e=D*(V2)/neu//reynolds number
printf("\n reynolds number R_e=%f ",R_e);//printing mistake in book due to value of h_f
q=V2*(%pi*(D^2)/4)//volumatric flow rate
printf("\n vol. flow rate q=%f ft^3/s",q);//printing mistake in book due to value of h_f

