clc;
warning("off");
printf("\n\n example10.4 - pg415");
// given
d=6*10^-2;  //[m] - inside diameter of tube
p=1000;  //[kg/m^3] - density
// for smooth pipe
Nre=[10^4 10^5];
f=[0.0076 0.0045];
mu=10^-3;  //[kg/m^2*s]
U=(Nre*mu)/(d*p);
L=300;  //[m] - length of the tube
for i=1:2
deltap(i)=(4*f(i))*(L/d)*((p*(U(i)^2))/2);
end
disp("for smooth pipe");
printf(" Nre                           -deltap");
printf("\n %f                   %f",Nre(1),deltap(1));
printf("\n %f                 %f \n",Nre(2),deltap(2));
// for commercial steel
Nre=[10^4 10^5];
f=[0.008 0.0053];
U=(Nre*mu)/(d*p);
L=300;  //[m] - length of the tube
for i=1:2
deltap(i)=(4*f(i))*(L/d)*((p*(U(i)^2))/2);
end
disp("for commercial steel pipe");
printf(" Nre                           -deltap");
printf("\n %f                   %f",Nre(1),deltap(1));
printf("\n %f                 %f \n",Nre(2),deltap(2));
// for cast iron pipe
Nre=[10^4 10^5];
f=[0.009 0.0073];
U=(Nre*mu)/(d*p);
L=300;  //[m] - length of the tube
for i=1:2
deltap(i)=(4*f(i))*(L/d)*((p*(U(i)^2))/2);
end
disp("for cast iron pipe");
printf(" Nre                           -deltap");
printf("\n %f                   %f",Nre(1),deltap(1));
printf("\n %f                 %f",Nre(2),deltap(2));