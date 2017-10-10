Iep=2*10^-3;
Ien=10^-5;
Icp=1.98*10^-3;
Icn=10^-6;
a=Icp/Iep;  //say a=α
printf('\n The value of α is %f',a);
Ie=Ien+Iep;
c=Iep/Ie;  //say c=γ
printf('\n The value of γ is %f',c);
a1=Icp/Ie;
b=a1/(1-a1);  //say b=β
printf('\n The value of β is %f',b);
Ic=Icp+Icn;
Ib=Ie-Ic;
printf('\n The value of Ib is %fmA',Ib*10^3);