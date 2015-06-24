//Wave Propagation : example 13-2 : (pg 641 & 642)
S=83;//satellite longitude in degrees
N=90;//site longitude in degrees
L=35;//site latitude in degrees
G=S-N;
a=atand(-0.128/0.5736);
A=180+a;     
x=cosd(G)*cosd(L);
b=0.1512;
d=x-b;
n=(cosd(G))^2;
m=(cosd(L))^2;
o=1-(m*n);
w=sqrt(o);
y=d/w;
E=atand(y);
printf("\nThe azimuth is equal to A = 180+arctan(tanG/tanL) = %.f degrees",A);
printf("\nThe elevation calculated ,\ntan(E)=cosG.cosL-0.1512/sqrt(1-cos^2G.cos^2L) = %.4f",y);
printf("\nE = %.3f degrees",E);