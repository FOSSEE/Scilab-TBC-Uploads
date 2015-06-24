clear;
clc;
va=100*(%e^(%pi*%i/2));
vb=116*(%e^(%i*0));
vc=71*(%e^(%i*(224.8*%pi/180)));
a=1*%e^(%i*(120*%pi/180));
b=a^2;
va0=1/3*(va+vb+vc);
va1=1/3*(va+(a*vb)+(b*vc));
va2=1/3*(va+(b*vb)+(a*vc));
va0r=real(va0);
va0i=imag(va0);
va0m=sqrt((va0r^2)+(va0i^2));
va0a=atand(va0i/va0r);
va1r=real(va1);
va1i=imag(va1);
va1m=sqrt((va1r^2)+(va1i^2));//the difference in result is due to erroneous calculation in textbook.
va1a=atand(va1i/va1r);
va2r=real(va2);
va2i=imag(va2);
va2m=sqrt((va2r^2)+(va2i^2));
va2a=atand(va2i/va2r);
mprintf("the symmetric components are \n va0=%f+j%f V \tor\t %f/_%d V",va0r,va0i,va0m,va0a);
mprintf("\n va1=%f+j%f V \tor\t %f/_%d V",va1r,va1i,va1m,va1a);
mprintf("\n va2=%f+j(%f) V \tor\t %f/_%d V",va2r,va2i,va2m,va2a);
disp('the difference in result is due to erroneous calculation in textbook.')
