

//exapple 1.3 
clc; funcprot(0);
// Initialization of Variable
pi=3.14159
latA=15;
latB=12+6/60;
lonA=50+12/60;
lonB=54;
Re=6370;//radius of earth
b=(90-latA)*pi/180;;
a=(90-latB)*pi/180;
P=(lonB-lonA)*pi/180;
p=acos(cos(P)*sin(a)*sin(b)+cos(a)*cos(b));//speherical triangle law
disp(p*Re,"distance from A to B in (km):");
x=atan(cos(a/2-b/2)/cos(a/2+b/2)*tan(pi/2-P/2));//x=A/2+B/2 //speherical triangle law
y=atan(sin(a/2-b/2)/sin(a/2+b/2)*tan(pi/2-P/2));//x=A/2-B/2 //speherical triangle law
dol=pi-x-y;
disp("direction of B from A  towards east of south:");
a=modulo(dol*3600,60);
printf("seconds %.2f",a);
b=modulo(dol*3600-a,3600)/60;
printf("  minutes %i",b);
c=(dol*3600-b*60-a)/3600;
printf("  degrees %i",c);
