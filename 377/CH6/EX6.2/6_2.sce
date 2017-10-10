disp("σ=q*(μe*n+μh*p)");
b=510;  //say μe=b
c=187;  //say μh=c
n=10^16;
p=2.25*10^4;
q=1.6*10^-19;
a=q*((b*n)+(c*p));
printf('\n The value of σ is %f/ohm/cm',a);
d=a*10^-2;
l=2;A=2;
R=l/(d*A);
printf('\n The value of Resistance is %fohm',R);