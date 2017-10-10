N1=5.5*10^18;
N2=4.5*10^18;
q=1.6*10^-19;
K=1.38*10^-23;
T=500;
N=N1+N2;
printf('\n The total doping is %fcm^-3',N);
De=a*K*T/q;
printf('\n The value of De is %fcm^2/s',De);
c=-10^7;  //say c=dn/dx
F=-De*c;
printf('\n The value of F is %felectrons/cm^2-s',F);
J=q*F;
printf('\n The diffusion current density is %fpA/cm2',J*10^12);