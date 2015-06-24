//9.1
clc;
n=300/1;
Z2=complex(1.5,1);
a=polar(Z2);
I2=5;
E2=I2*a;
E1=E2/n;
alpha=atand(1/1.5)
Io=complex(100,40)
delta=atand(40/100);
b=polar(Io)
sigma=-(b*sind(alpha+delta))*100/(n*I2);
printf("Ratio error=%.2f percent",sigma)
bet=(b*cosd(alpha+delta))/(n*I2);
printf("\nPhase angle=%.2f degree",bet)