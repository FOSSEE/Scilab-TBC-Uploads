clc;
warning("off");
printf("\n\n example10.11 - pg 447");
// given
sp=1.1;
p=sp*62.4;  //[lb/ft^3] - density
mu=2*6.72*10^-4;  //[lb/ft*sec] - viscosity
Q=400;  //[gpm] - volumetric flow rate
e=1.5*10^4;  //roughness of steel pipe
gc=32.174;
kexit=1;
kentrance=0.5;
// 4 in schedule pipe
d=4.026/12;  //[ft]
U4=Q/39.6;  //[ft/sec]
Lgv=13.08;
Lglv=114.1;
Le=40.26;
Lpipe_4=22;
Lfittings_4=Lgv+Lglv+Le;
Lloss=0;
L_4=Lpipe_4+Lfittings_4+Lloss;
Nre_4=(d*U4*p)/mu;
f=0.00475;
Fpipe_4=((4*f*L_4)/d)*(U4^2)*(1/(2*gc));
Floss_4=((kentrance+0)*(U4^2))/(2*gc);
// 5 in schedule pipe
d=5.047/12;
U5=Q/62.3;
Lgv=10.94;
Le=75.71;
Lpipe_5=100;
Lfittings_5=Lgv+Le;
Lloss=0;
L_5=Lpipe_5+Lfittings_5+Lloss;
Nre=(d*U5*p)/mu;
f=0.00470;
Fpipe_5=((4*f*L_5)/d)*(U5^2)*(1/(2*gc));
Floss_5=((kexit+0)*(U5^2))/(2*gc);
// 6 in schedule pipe
d=6.065/12;
U6=Q/90;
Lgv=6.570;
Le=30.36;
Lpipe_6=4;
Lfittings_6=Lgv+Le;
Lloss=0;
L_6=Lpipe_6+Lfittings_6+Lloss;
Nre=(d*U6*p)/mu;
f=0.00487;
Fpipe_6=((4*f*L_6)/d)*(U6^2)*(1/(2*gc));
kc=0.50;
Floss_6=kc*((U6^2)/(2*gc));
Ffittings=0;
deltap_6=p*(Fpipe_6+Ffittings+Floss_6);
// 3/4 in 18 gauge tube
d=0.652112/12;
L_3by4=15;
U_3by4=(Q*0.962)/100;
Floss_3by4=100*(kexit+kentrance)*((U_3by4^2)/2);
Nre=d*U_3by4*p*(1/mu);
// clearly the flow is turbulent
f=0.08*((Nre)^(-1/4))+0.012*((d)^(1/2));
deltap_3by4=((4*f*p*L_3by4)/d)*((U_3by4^2)/(2*gc));
Fpipe_3by4=100*((4*f*L_3by4)/d)*((U_3by4^2)/(2*gc));
deltap_spraysystem=25; //[psi]
Fspraysystem=(deltap_spraysystem/p)*(144);
delta_p=[p*(kexit+kentrance)]*[(U_3by4^2)/(2*gc)];
Fpipe=Fpipe_4+Fpipe_5+Fpipe_6;
Floss=Floss_4+Floss_5+Floss_6+Floss_3by4;
ws=0+([(15^2)-0]/[2*gc])+38.9+382.5;
w=(Q*p)/(7.48);
Ws=(ws*w)/(33000);
efficiency=0.6;
Ws_actual=Ws/efficiency
printf("\n\n The power supplied to th pump is\n W_actual = %f",Ws_actual);








