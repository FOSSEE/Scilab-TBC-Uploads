//example 7.6
clc; funcprot(0);
z=[0, 4, 8, 12, 16];
Gamma=110;
phi=36*%pi/180;
H=16;
Sa1(1)=0;//sigma(1)
Sa2(1)=0;//sigma(2)
Sztr(1)=0;//sigma(z)translation
printf("z(ft)\t sigma(1)(lb/ft^2)  sigma(2)(lb/ft^2) sigma(z)translation (lb/ft^2)\n");
for i=1:5
    Sa1(i)=Gamma*(tan(%pi/4-phi*z(i)/2/H))^2*(z(i)-phi*z(i)^2/H/cos(phi*z(i)/H));
    Sa2(i)=Gamma*z(i)*(cos(phi)/(1+sin(phi)))^2;
    Sztr(i)=Sa1(i)/2+Sa2(i)/2;
    printf("%.2f\t %.2f\t\t\t %.2f\t\t\t %.2f\n", z(i),Sa1(i),Sa2(i),Sztr(i));
end
plot(z,Sztr);
xtitle("sigma(z)translation vs z","z(m)","sigma(z)translation (lb/ft^2)")


