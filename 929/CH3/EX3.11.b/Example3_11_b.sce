//Example 3.11(b)

clear;

clc;

m=1;//Q is maximised at m=1

n=2;//Order of filter

f0=10*10^(3);

Qnum=(m*n)^(1/2);

Qden=m+1;

Q=Qnum/Qden;

C=1*10^(-9);//Assuming C=1 nF

C2=C;

C1=n*C;

R=1/(Qnum*C*2*%pi*f0);

R2=R;

R1=m*R;

w=4*%pi*10^4;

f=2*10^4;

Hw=1/(1-(w^(2)*R1*R2*C1*C2)+%i*w*((R1*C2)+(R2*C2)));

Vom=10*abs(Hw);

an=atan(imag(Hw)/real(Hw));

theta=180-(an*(180/%pi));

theta0=theta-90;

printf("vo(t)=%.3f cos(4*pi*(10^4)*t+",Vom);

printf("%.2f) V",theta0);