// Three-Phase Circuits :example 6.31 :(pg 6.32)
VL=220;
Po=11.2*10^3;
N=0.88;//efficiency
IL=38;
Pi=(Po/N);
x=(Pi/(sqrt(3)*VL*IL));
phi=acosd(x);
W1=(VL*IL*cosd(30-phi));
W2=(VL*IL*cosd(30+phi));
printf("\nVL=220 V \nPo=11.2kW \nN=0.88 \nIL=38A \N=(Po/Pi)= %.2f W",Pi);
printf("\nPi=sqrt(3)*VL*IL*cos(phi) \ncos(phi)=%.2f lagging",x);
printf("\nphi=%.2f degrees",phi);
printf("\nW1 =VL*IL*cos(30-phi) =%.2f W",W1);
printf("\nW2 =VL*IL*cos(30+phi) =%.2f W",W2);