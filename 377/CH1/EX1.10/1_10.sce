disp("En=-(13.6)*(Z^2)/(n^2)");
n1=1;n2=2;n3=3;
Z=3;
h=6.6*10^-34;
c=3*10^8;
E1=-(13.6)*(Z^2)/(n1^2);
E2=-(13.6)*(Z^2)/(n2^2);
E3=-(13.6)*(Z^2)/(n3^2);
printf('\n The value of E1 is %f eV',E1);
printf('\n The value of E2 is %f eV',E2);
printf('\n The value of E3 is %f eV',E3);
a1=91.8;a2=108.8;a3=114.75;  //say a1,a2,a3 are hv1,hv2,hv3 respectively
v1=a1*1.6*(10^-19)/(h);
v2=a2*1.6*(10^-19)/(h);
v3=a3*1.6*(10^-19)/(h);
//say b1,b2,b3 are λ1,λ2,λ3 respectively
b1=c/v1;b2=c/v2;b3=c/v3;
c1=b1*10^9;c2=b2*10^9;c3=b3*10^9;
printf('\n The value of λ1 is %f nm',c1);
printf('\n The value of λ2 is %f nm',c2);
printf('\n The value of λ3 is %f nm',c3);