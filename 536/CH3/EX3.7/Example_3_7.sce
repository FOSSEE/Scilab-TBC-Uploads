clc;

printf("Example 3.7\n");
Q_h=2.27; // flow rate of water in m^3/h
T=320; //Temperature of water to be pumped
id=40e-3; //internal diameter of pipe
l_h=150; //length of pipe horizontally
l_v=10; //length of pipe vertically
e=0.2e-3;
g=9.81;
rho=1000;
printf("\n Given\n flow rate of water in m^3/h = %.2f m^3/h\n Temperature of water to be pumped = %d K\n internal diameter of pipe = %d mm\n length of pipe horizontally = %d m\n length of pipe vertically = %d m",Q_h,T,id*1e3,l_h,l_v);

rel_rough=e/id; //Relative roughness
printf("\n\n Relative roughness = %.3f",rel_rough);
meu=0.65e-3; //Viscosity at 320 K
Q_s=Q_h/3600; //flow rate of water in m^3/s
area=%pi/4*id^2; // Area for flow
printf("\n Area for flow = %.2f * 10^-3 m^2",area*1e3);
u=Q_s/area; //Velocity
printf("\n Velocity = %.2f m/s",u);
Re=(id*u*rho)/meu;
printf("\n Reynolds No. = %d",Re);

//X=R/(rho*u^2)=0.004 (from Figure 3.7)
X=.004;
equi_len=l_h+l_v+(260*id); // Equivalent length of pipe
printf("\n Equivalent length of pipe = %.1f m",equi_len);
hf=4*X*equi_len*u^2/(id*g);
tot_head=hf+1.5+10; // Total head to be developed
printf("\n Total head to be developed = %.2f m",tot_head);
mass_thr=Q_s*rho; //Mass throughput
printf("\n Mass throughput = %.2f kg/s",mass_thr);
power_reqd=(mass_thr*tot_head*g)/0.60;
printf("\n\n Power required = %.1f W = %.3f kW",power_reqd,power_reqd*1e-3);