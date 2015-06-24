//Wave Propagation : example 13-3 : (pg 646)
x=(32+(44/60)+(36/3600));// N latitude
y=(106+(16/60)+(37/3600));//W longitude
D=42.1642*10^6;//distance from the satellite to the center of the earth
R=6.378*10^6;//earth's radius
a=32.74333;
B=-7.27694;
m=D^2;
n=R^2;
e=2*D*R;
q=cosd(a)*cosd(B);
d=sqrt(m+n-(e*q));
c=2.997925*10^5;//velocity of light
de=d/c;
rd=(2*d)/c;
printf("\n N latitude \nconverted into degrees = %.5f",x);
printf("\n W longitude \n coverted into degrees = %.7f",y);
printf("\nd = sqrt(D^2 + R^2 - 2.D.R.cosa.cosB) = %.f meters",d);
printf("\ndelay = d/c  and roundtrip delay = 2d/c ");
printf("\ndelay = 0.%.f seconds",de);
printf("\nroundtrip delay = 0.%.f seconds",rd);


