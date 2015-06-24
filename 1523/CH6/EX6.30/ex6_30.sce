// Three-Phase Circuits :example 6.30 :(pg 6.31 & 6.32)
VL=2000;
N=0.9;//efficiency
W1=300*10^3;
W2=100*10^3;
P=W1+W2;
x=(sqrt(3)*((W1-W2)/(W1+W2)));
phi=atand(x);
pf=cosd(phi);
IL=(P/(sqrt(3)*VL*pf));
printf("\nVL=2000 V \nN=0.9 \nW1=300kW \nW2=100kW");
printf("\nP=W1+W2 =%.f W",P);//Input Power
printf("\ntan(phi)=(sqrt(3)*(W1-W2/W1+W2)) =%.3f",x);
printf("\nphi=%.2f degrees ",phi);
printf("\ncos(phi)=%.2f",pf);//Power factor
printf("\nP=sqrt(3)*VL*IL*cos(phi) \nIL=%.2f A",IL);
