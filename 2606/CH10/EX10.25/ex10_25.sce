//Page Number: 10.41
//Example 10.25
clc;
//Given
A1=0.5;
A2=0.5;
T=0.01; //sec
N0=2*0.0001; //W/Hz
f=50; //Hz

//(a) Probability of bit error
Es1=(A1^2*T)/2;
Es2=(A2^2*T)/2;

Eb=(Es1+Es2)/2;
//As PE=Qsqrt(Ep+Eq-2Epq/2N0)
//In this case Ep=Eq=Eb
//Therefore PE=Qsqrt(Eb(1-p)/N0)
//where p=Epq/Eb

//p=(1/Eb)*integrate('0.5*cos(2000*%pi*t)*0.5*cos(2020*%pi*t)','t',0,T);
//We get
p=0.94;
q=1-p;
//As Pe=Q(z)
//where z=sqrt(Eb/N0)
z=sqrt((Eb*q)/N0);
Pe=(1/2)*erfc(z/1.414);
disp(Pe,'Probabilty of bit error:')

//(b)
//Given
fs=50; //Hz
//or fs=1/2T where T=0.001
//This implies y=tone spacing will be orthogonal
//Therefor p=0

//As Pe=Q(z)
//where z=sqrt(Eb/N0)
zb=sqrt(Eb/N0);
PB=(1/2)*erfc(zb/1.414);
disp(PB,'Probabilty error for fs=50Hz:')
