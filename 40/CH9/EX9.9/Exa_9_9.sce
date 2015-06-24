//D2D transformations
//(a)LP 2 HP transformation
z=%z;
HZ=(3*(z+1)^2)/(31*z^2-26*z+7);
WD=0.5*%pi;WC=0.25*%pi;//Band edges
a=-cos(0.5*(WD+WC))/cos(0.5*(WD-WC))//Mapping parameter
HHPZ=horner(HZ,-(z+a)/(1+a*z))
//(b)LP 2 BP transformation
W1=0.25*%pi;
W2=0.75*%pi;
K=tan(0.5*WD)/tan(0.5*(W2-W1))
a=-cos(0.5*(W1+W2))/cos(0.5*(W1-W2))//Mapping parameters k,a,A1,A2
A1=2*K*a/(K+1),A2=(K-1)/(K+1)
HBPZ=horner(HZ,-(z^2+A1*z+A2)/(A2*z^2+A1*z+1))
//(c)Lp 2 BS transformation
w1=3/8*%pi;w2=5/8*%pi;//band edges
K1=tan(0.5*WD)*tan(0.5*(w2-w1))
a1=-cos(0.5*(w1+w2))/cos(0.5*(w2-w1))//Mapping parameters k1,a1,A1c,A2c
A1c=2*a1/(K1+1),A2c=-(K1-1)/(K1+1)
HBSZ=horner(HZ,(z^2+A1c*z+A2c)/(A2c*z^2+A1c*z+1))
f=0:1/256:4;
for i=1:length(f)
HZ1(i)=horner(HZ,exp(-%i*%pi*f(i)/4));
end
HZ1=abs(HZ1);
HHPZ1=abs(horner(HHPZ,exp(-%i*%pi*f'/4)));
HBPZ1=abs(horner(HBPZ,exp(-%i*%pi*f'/4)));
HBSZ1=abs(horner(HBSZ,exp(-%i*%pi*f'/4)));
a=gca();
a.x_location="origin";
plot2d(f,HZ1);
plot2d(f,HHPZ1);
plot2d(f,HBPZ1);
plot2d(f,HBSZ1);
xlabel('Analog Frequency');
ylabel('Magnitude');
xtitle('Digital-to-digital transformations of a low pass filter');