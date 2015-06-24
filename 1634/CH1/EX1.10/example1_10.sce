

//exapple 1.10 
clc; funcprot(0);
// Initialization of Variable
pi=3.14159;
theta=20+30/60;
H=42+6/60;//hour angle
delta=50;
//in triangle ZPM(figure in book)
PZ=(90-delta)*pi/180;
H=H*pi/180;
PM=(90-theta)*pi/180;
ZM=acos((cos(PZ)*cos(PM)+sin(PM)*sin(PZ)*cos(H)));
alpha=pi/2-ZM;
alpha=alpha*180/pi;
disp(,"altitude of star in :");
a=modulo(alpha*3600,60);
printf("seconds %.2f",a);
b=modulo(alpha*3600-a,3600)/60;
printf("  minutes %i",b);
c=(alpha*3600-b*60-a)/3600;
printf("  degrees %i",c);
A=((cos(PM)-cos(PZ)*cos(ZM))/sin(PZ)/sin(ZM));

if A<0 then
    A=-A;
    A=acos(A);
    A=180-A*180/pi;
    disp("azimuth of star in (degrees) westwards:")
   
   a=modulo(A*3600,60);
   printf("seconds %.2f",a);
   b=modulo(A*3600-a,3600)/60;
   printf("  minutes %i",b);
    c=(A*3600-b*60-a)/3600;
  printf("  degrees %i",c);
end
