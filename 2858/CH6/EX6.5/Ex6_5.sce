//example 6.5
clc; funcprot(0);
P=['A','B','C','D','E','F','G','H','I','J','K','L','M','N'];//point
k=1.2*ones(1,14);//Q/A
x=[-38,-24, -12, 0, 12, 24, 38, 38, 24, 12, 0, -12, -24, -38];
x1=0.0017*x;
y=[48,48,48,48,48,48,48, -48, -48, -48, -48, -48, -48, -48];
y1=-0.0011*y;
printf("point\t Q\A (kip/ft^2)\t x(ft)\t 0.0017x(ft)\t\t y(ft)\t 0.0011y(ft)\t q(kip/ft^2)\n")
for i=1:14
    q(i)=1.2+x1(i)+y1(i);
    printf("%s\t %.2f\t\t %.2f\t\t%.2f\t\t %.2f\t %.2f\t\t %.2f\n ",P(i),k(i),x(i),x1(i),y(i),y1(i),q(i))
end
printf("the soil pressure at all point is less than the given qallnet=1.5 kip/ft^2");


