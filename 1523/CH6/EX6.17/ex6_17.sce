// Three-Phase Circuits :example 6.17 :(pg 6.20)
Po=200*10^3;
f=50;
VL=440;
N=0.91;
pf=0.86;
phi=acosd(pf);
Pi=(Po/N);
IL=(Pi/(sqrt(3)*VL*pf));
Iph=(IL/sqrt(3));
AC=(Iph*pf);
RC=(Iph*sind(phi));
printf("\nPo=200 kW \nf=50Hz \nVL= 440 V \nN=0.91 \npf=0.86");
//For a delta connected load (induction motor)
printf("\nVph =VL =%.f V",VL);
printf("\nN=(Po/Pi)");//efficiency
printf("\nPi=%.f W",Pi);//Input power
printf("\nPi=sqrt(3)*VL*IL*cos(phi) \nIL=%.1f A",IL);
printf("\nAC = (Iph*cos(phi))=%.1f A",AC);//Active component of phase current
printf("\nRC=(Iph*sin(phi)) =%.1f A",RC);//Reactive component of phase current