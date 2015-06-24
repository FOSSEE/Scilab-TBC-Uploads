clear;
//clc();


function [mag,theta]=c(r,i)
    mag=sqrt(r*r + i*i)
    theta=atand(i/r)
endfunction


previousprot = funcprot(0)
funcprot(0)


//a).inductor switch open
xdg=0.8;
xt=0.1;
xl=0.6;
xr=0.6;

e=1.2;
v=1;

x=xdg+xt+.5*xl+0.5*xl;
pm=e*v/x;
printf("the steady state stability limit with inductor switch S open is:%.2f pu\n",pm);


//b).inductor switch closed

z1=(xdg + xt +0.5*xl);
z2=0.5*xl;
z3=xr;
b=(%i)*z1 + (%i)*z2 +(((%i)*z1*(%i)*z2)/((%i)*z3));

B=imag(b);
x1=B;
pm=e*v/x1;
printf("the steady state stability limit with inductor switch S closed is:%.2f pu\n",pm);

//c).with the inductor replaced with a shunt capaicitor of same per unit

z31=-0.6;
b1=(%i)*z1 + (%i)*z2 +(((%i)*z1*(%i)*z2)/((%i)*z31));
B1=imag(b1);
x2=B1;
pm2=e*v/x2;
printf("the steady state stability limit with the inductor replaced with a shunt capaicitor is:%.2f pu\n",pm);

//d).when the shunt capaicitor is replaced with a series capacitor

xc=-0.6;
x3=xdg+xt+xl+xc;
pm=e*v/x3;
printf("the steady state stability limit when the shunt capaicitor is replaced with a series capacitor is:%.2f pu\n",pm);

//e).when the shunt inductor is replaced with a resistor

z11=xdg + xt +0.5*xl;
z3=1.5;

r=1;
i=z11/z3;
[mag,theta]=c(r,i);
A1=mag;
alpha1=theta;

b=((%i)*z11 + (%i)*z2 +((%i)*z11*(%i)*z2)/z3);

r=real(b);
i=imag(b);


[mag,theta]=c(r,i);
B1=mag;
bet2=theta;
pm=e*v/B1 - A1*v^2*cosd(bet2-alpha1)/B1;
printf("the steady state stability limit when the shunt inductor is replaced with a resistor is:%.2f pu\n",pm);
