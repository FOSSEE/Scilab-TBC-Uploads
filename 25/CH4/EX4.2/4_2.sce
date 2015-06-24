//example:-4.2,page no.-160.
//program to find the cut off frequency of two propagating modes of a circular waveguide.
a=0.005;eipsilar=2.25;f=13*10^9;c=3*10^8;d=0.001;sigma=6.17*01^7;muo=4*%pi*10^-7;
m=1;n=1;
p11=1.841;p01=2.405;
fc=(p11*c)/(2*%pi*a*sqrt(eipsilar));
kc=p11/a;
fc=fc/(10^9);
disp(fc,'cut-off frequency for TE11 mode in GHZ')
m=0;n=1;
fc=(p01*c)/(2*%pi*a*sqrt(eipsilar));
fc=fc/(10^9);
disp(fc,'cut-off frequency for TE01 mode in GHZ')
// so,TE01 can't be propagating mode.only TE11 will be.
k=(2*%pi*f*sqrt(eipsilar))/c;
disp(k,'k in m-1=')
B=sqrt(k^2-kc^2);
disp(B,'propagation constant of TE11 mode')
ac=(k^2*d)/(2*B);
Rs=sqrt((2*%pi*f*muo)/(2*sigma));  // surface resistance.
acm=(Rs/(a*k*377*B))*(kc^2+((k^2)/(p11^2-1)));
a=ac+acm;
a=-20*(-0.547*0.5)*log10(%e);
disp(a,'total attenuation factor in dB=')