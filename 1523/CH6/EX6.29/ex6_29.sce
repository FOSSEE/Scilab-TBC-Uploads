// Three-Phase Circuits :example 6.29 :(pg 6.31)
S=10*10^3;
pf=0.342;
x=(S/sqrt(3));
phi=acosd(pf);
W1=x*cosd(30+phi);
W2=x*cosd(30-phi);
printf("\nS=10kVA \npf=0.342 \nS=sqrt(3)*VL*IL");
printf("\nVL*IL=%.f VA",x);
printf("\ncos(phi)=%.3f",pf);
printf("\nphi=%.f degrees",phi);
//(i)when power factor is leading
printf("\npf leading \nW1=VL.IL.cos(30+phi)= %.f W",W1);
printf("\n \nW2=VL.IL.cos(30-phi)= %.f W",W2);
//(i)when power factor is lagging
printf("\npf lagging \nW1=VL.IL.cos(30-phi)= %.f W",W2);
printf("\n \nW2=VL.IL.cos(30+phi)= %.f W",W1);