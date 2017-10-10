disp("σn=q*μe*n and σp=q*μh*p");
n=10^16;p=10^4;
a=626;  //say μe=a
b=292;  //say μh=b
q=1.6*10^-19;
c=q*a*n;  //say c=σn
d=q*b*p*10^13;  //say d=σp
printf('\n The value of σn is %f/ohm/cm',c);
printf('\n The value of σp is %f*10^-13/ohm/cm',d);
e=c+(d*10^-13);  //say e=σ=σn+σp
A=2*10^-2;
l=2.5;
R=l/(e*A);
printf('\n The value of resistance is %fohm',R);