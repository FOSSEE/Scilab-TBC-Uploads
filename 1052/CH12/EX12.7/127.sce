clc;
//Example 12.7
//page no 130
printf("Example 12.7 page no. 130\n\n");
//a gas is flowing through a circular duct
D=1.2//diameter of duct,ft
T=760//temperature,k
P=1//pressure
T_s=520//standard temperature
P_s=1//standard pressure
q_s=1000// standard volumatric flow rate,in scfm(given)
q=q_s*(T/T_s)*(P/P_s)//actual volumatric flow rate
printf("\n actual volumatric flow rate q=%f acfm ",q);
s=%pi*D^2/4//cross sectional area
s_m=s*0.0929//area in m^2 
v=(q/s)/60//velocity
printf("\n average velocity v=%f ft/s",v);
MW=33//mlecular weight of gas
R=0.7302//gas constant
rho=(P*MW)/(R*T)//density  from ideal gas law
printf("\n density rho=%f lb/ft^3",rho);
m_dot=rho*v*s_m//mass flow rate 
printf("\n mass flow rate m_dot=%f lb/s",m_dot);//printing mistake in book
D_m=0.366//diamter in m
v_m=6.55//velocity in m/s
rho_m=rho*(0.4536/.3048^3)//density in kg/m^3
rho_m=0.952//round off value
printf("\nv_m=%f",v_m);
meu=2.2e-5//viscosity of gas in 
R_e=D_m*v_m*rho_m/meu//reynolds no
printf("\n reynolds no R_e=%f ",R_e);//calculation error in book
