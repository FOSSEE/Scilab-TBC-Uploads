// example:-4.5,page no.-180.
// program to find width of a copper strip line conductor.
eipsilar=2.20;Zo=50;b=0.0032;d=0.001,f=10^10;t=0.00001;
c=3*10^8;Rs=0.026;A=4.74;
x=(30*%pi)/(sqrt(eipsilar)*Zo);
x=x-0.441;
w=b*x;
if ((sqrt(eipsilar)*Zo)<120)
    disp("width of copper strip line conductor is 0.00266m")
end
K=(2*%pi*f*sqrt(eipsilar))/c;
ad=(K*d)/2;
ac=(2.7*(10^-3)*Rs*eipsilar*Zo*A)/(30*%pi*(b-t));
a=ac+ad;
a=20*a*log10(%e);
lamda=c/(sqrt(eipsilar)*f);
alamda=lamda*a;
disp(K,'wave number=')
disp(ad,'dielectric aattenuation=')
disp(ac,'conductor attenuation=')
disp(a,'total attenuation constant=')
disp(alamda,'attenuation in dB/lamda=')