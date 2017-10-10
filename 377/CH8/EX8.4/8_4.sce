disp("σ=e*n*μe+e*p*μh=e*ni*(μe+μh)");
b=1350;  //say b=μe
c=450;  //say c=μh
e=1.6*10^-19;
ni=1.45*10^10;
a=e*ni*(b+c);
printf('\n The value of σ is %1.2f*10^-6',a*10^6);
L=1;A=1;
g=4.18*10^-6;  //rounding off σ
R=L/(g*A);
printf('\n The value of R is %f',R);
Nsi=5*10^22;
Nd=Nsi/10^9;
n=5*10^13;
h=5*10^13;
printf('\n The value of Nd is %f',Nd);
p=(ni^2)/Nd;
printf('\n Tha value of p is %f',p);
a1=e*n*b;  //say σ=a1
printf('\n The value of σ1 is %f/ohm/cm',a1);
R1=L/(a1*A);
printf('\n The value of R1 is %f ohm',R1);
a2=e*h*c;  //say a2=σ
printf('\n The value of σ2 is %f/ohm/cm',a1);
R2=L/(a2*A);
printf('\n The value of R2 is %f ohm',R2);