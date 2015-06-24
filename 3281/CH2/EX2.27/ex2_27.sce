//Page Number: 110
//Example 2.27
clc;
//Given
c=3D+8; //m/s
a=0.5; //cm
a1=a/100; //m
f=14D+9; //Hz
er=2.08;
p11=1.841;
p01=2.405;
tandel=4D-4;
w=2*%pi*f;
u=%pi*4D-7;
sig=4.1D+7;
et=377;

//(i) Cut off frequencies
fcte11=p11*c/(2*%pi*a1*sqrt(er));
fctm01=p01*c/(2*%pi*a1*sqrt(er));
disp('Ghz',fcte11/10^9,'Cut off frequencies for TE11 mode:');
disp('Ghz',fctm01/10^9,'Cut off frequencies for TM01 mode:');

//(ii) Overall noise
//Dielectric attenuation
ad=(%pi*sqrt(er)*tandel*f)/(c*sqrt(1-((fcte11/f)^2)));
disp('dB/m',ad*8.686,'Dielectric attenuation:');

//Conductor attenuation
k=(2*%pi*f*sqrt(er))/c;
bet=sqrt((k*k)-((p11/a1)^2));
//Surface resistance
rs=sqrt((w*u)/(2*sig));
kc2=(p11/a1)^2;

ac=(rs*(kc2-((k^2)/((p11^2)-1))))/(a1*k*et*bet);
disp('dB/m',ac*8.686,'Conductor attenuation:');

//Total attenuation
a=(ac+ad)*8.686;
disp('dB/m',a,'Total attenuation:');
ta=a*0.3;
disp('dB',ta,'Total attenuation in 30 cm line:');

//Answer for condcutor attenuation is wrong in book, hence answer for total loss is different
