printf("\t example 18.4 \n");
T1=1100; // F
T2=70; // F
t1=T1+460; // R
t2=T2+460; // R
k=27; // from appendix
c=0.14; // from appendix
row=490; // from appendix
alpha=0.394;
theta=4;
l=10/12; // ft
x=0.173*10^(-8); // stefan constant
e=0.7; // emmisivity
printf("\t values are approximately mentioned in the book \n");
printf("\t for a \n");
// Assume the temperature is 500°F after 4 hr. The coefficient from plate to air is the· sum of the radiation and convection coefficients
hri=(e*x*(t1^4-t2^4))/(T1-T2);
printf("\t radiation coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",hri); // eq 4.32
hci=(0.3*(T1-T2)^(1/4)); // eq 10.10
printf("\t convection coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",hci);
hti=hri+hci;
printf("\t total intial coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",hti);
// For the 4-hr coefficient at 500°F
hr=2.2; // Btu/(hr)*(ft^2)*(F)
hc=1.35; // Btu/(hr)*(ft^2)*(F)
ht=hr+hc;
printf("\t total intial coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",ht);
h=(hti+ht)/2;
printf("\t mean coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",h);
X=(4*alpha*theta)/(l^2);
Y=(h*l)/(2*k);
printf("\t X is : %.1f \n",X);
printf("\t Y is : %.3f \n",Y);
Z=0.42; // Z=f3(X,Y), from fig 18.10
t=T2+((T1-T2)*Z); // eq 18.53
printf("\t t is : %.0f F \n",t);
printf("\t for b \n");
Z1=0.43; // Z=f4(X,Y), from fig 18.11
t1=T2+((T1-T2)*Z1); // eq 18.53
printf("\t temperature of center plane is : %.0f F \n",t1);
// end
