//Microwaves and Lasers : example 16-3 : pg(756)
D=4.5;//diameter of parabolic reflector
k=0.62;//efficiency factor
x=(D/2)^2;
y=(k*%pi);
Ae=y*x;//aperture efficiency
i=(%pi*x);//ideal capture area
printf("\nAe = k.pi(D/2)^2 sq.m = %.2f sq.m",Ae);
mprintf("\nThe ideal capture area for %.1f m parabolic antenna is pi.(D/2)^2 = %.1f sq.m",D,i);
