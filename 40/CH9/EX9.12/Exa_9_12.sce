//IIR filter design
//Design of chebyshev IIR filter with following specifications
fp1=1.6;fp2=1.8;fs1=3.2;fs2=4.8;//pass band edges
Ap=2;As=20;S=12;
s=%s;z=%z;
//(a)Indirect Bilinear design
W=2*%pi*[fp1 fp2 fs1 fs2]/S
C=2;
omega=2*tan(0.5*W');//prewarping each band edge frequency
epsilon=sqrt(10^(0.1*Ap)-1);
n=acosh(((10^(0.1*As)-1)/epsilon^2)^1/2)/(acosh(fs1/fp1));
n=ceil(n)
alpha=(1/n)*asinh(1/epsilon);
for i=1:n
    B(i)=(2*i-1)*%pi/(2*n);
end
for i=1:n
    p(i)=-sinh(alpha)*sin(B(i))+%i*cosh(alpha)*cos(B(i));
end
Qs=1;
for i=1:n
    Qs=Qs*(s-p(i))
end
Qo=0.1634;
HPS=Qo/Qs
HBPS=horner(HPS,(s^2+1.5045^2)/(s*1.202))
HZ=horner(HBPS,2*(z-1)/(z+1))
f=0:0.001:0.5;
HZF=abs(horner(HZ,exp(%i*2*%pi*f')));
HBPF=abs(horner(HBPS,%i*2*%pi*f'));
a=gca();
plot2d(f,HZF);
plot2d(f,HBPF);
xlabel('Analog Frequency');
ylabel('magnitude');
xtitle('band pass filter designed by the bilinear transformation');