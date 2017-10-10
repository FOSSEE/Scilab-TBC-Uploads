a=0.095;b=0.181;
c=a+b;  //say c=sum of radii of Na+ and Cl-
d=c*10;
Z1=1;
Z2=-1;
e=1.6;
pi=3.14;
f=8.85;  //say f=Є0
Fa=-(Z1)*(Z2)*(e^2)/(4*pi*f*(d^2));
printf('\n The force of attraction is %f*10^-6 N',Fa);
printf('\n The force of repulsion is -%f*10^-6 N',Fa);