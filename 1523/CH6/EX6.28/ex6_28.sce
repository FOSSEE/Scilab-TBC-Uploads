// Three-Phase Circuits :example 6.28 :(pg 6.31)
W1=5*10^3;
W2=-(0.5*10^3);
P=(W1+W2);
x=(sqrt(3)*((W1-W2)/(W1+W2)));
phi=atand(x);
pf=cosd(phi);
printf("\nW1=5kW \W2=0.5kW");
// When the latter readings are obtained after the reversal of the current coil terminals of the wattmeter
printf("\nWhen W2 is reversed \nW1=5kW \nW2=-0.5kW");
printf("\nP=W1+W2 = %.1f W",P);//Power
printf("\ntan(phi)=sqrt(3)*(W1-W2/W1+W2) =%.2f",x);
printf("\nphi= %.2f degrees ",phi);
printf("\npf=cos(phi) =%.2f",pf);//Power factor
