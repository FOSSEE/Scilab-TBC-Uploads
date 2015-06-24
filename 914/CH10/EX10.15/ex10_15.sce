clc;
warning("off");
printf("\n\n example10.15 - pg466");
// given
Q=400;  //[gpm]
p=1.1*62.4;  //[lbm/ft^3]
mu=2*(6.72*10^-4);  //[lb/ft*sec]
e=1.5*10^4;
// 4 inch schedule pipe
d=0.3355;
S=(%pi*(d^2))/4;
U4=Q/39.6;
ebyd=e/d;
w=3671/60;
pm=13.45*62.4;
g=32.1;
gc=32.174;
deltaz=2.5;
deltap=(g/gc)*(pm-p)*(deltaz);
betaa=((1)/(1+[(2*p*gc)*(deltap)]*(((0.61*S)/w)^2)))^(1/4);
d2=betaa*d;
Nre2=(4*w)/(%pi*d2*mu);
a=(1/30)*4.026;
b=(1/4)*(2.013-1.21);
c=(1/8)*(2.42);
if a<b then
    if a<c then
        opt=a;
    else
        opt=c;
    end
else
    if b<c then
        opt=b;
    else
        opt=c;
    end
end
printf("\n\n The pertinent orifice details are \n orifice diameter = %f in \n corner taps, square edge\n orifice plate not over %f in thick",d2*12,opt);



