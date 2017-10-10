//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex3_27(b).sce

clc;
clear;
//case(b)
//from case(a) result v(t)=5+6.36 sin(t)+2.12 sin(3t)+1.27 sin(5t)
V0=5
V1=6.36/sqrt(2);
V3=2.12/sqrt(2);
V5=1.27/sqrt(2);

omega0=0;
omega1=1;
omega3=3;
omega5=5;

Vdc=(2*V0)/(2+%i*omega0);
V1=(2*V1)/(2+%i*omega1)
V3=(2*V3)/(2+%i*omega3)
V5=(2*V5)/(2+%i*omega5)

Vdc_mag=sqrt(real(Vdc)^2+imag(Vdc)^2);
Vdc_ang=atand(imag(Vdc)/real(Vdc));
V1_mag=sqrt(real(V1)^2+imag(V1)^2);
V1_ang=atand(imag(V1)/real(V1))-180;
V3_mag=sqrt(real(V3)^2+imag(V3)^2);
V3_ang=atand(imag(V3)/real(V3));
V5_mag=sqrt(real(V5)^2+imag(V5)^2);
V5_ang=atand(imag(V5)/real(V5));


t=[0:0.1:2*%pi];

Vc1=V1_mag*sin(t-V1_ang);
Vc3=V3_mag*sin((3*t)-V3_ang);
Vc5=V5_mag*sin((5*t)-V5_ang);
for tt=1:length(t)
 V(tt)=Vdc_mag*sin(%pi/2);   
end
V=V';
Vc=V+Vc1+Vc3+Vc5;

plot(t,[Vc1; Vc3; Vc5; V ;Vc])

title('The dc, fundamental, third and fifth harmonics components and resultant waveforms')
xlabel('Time')
ylabel('Voltage')
legend('Fundamental component','3rd harmonic component','5th harmonic component','DC component','output')
