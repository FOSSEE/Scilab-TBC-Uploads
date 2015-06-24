//Find sending end voltage, power factor, efficieny and regulation
clear;
clc;
//soltion
//given
S=12000;//kVA//power supplied
pf=0.8;//power factor
del=1.73*10^-6;
d=140//cm//distance of the conductor
l=50*10^3;
Vrl=33000;//V//recieving end voltage
I=S*1000/(sqrt(3)*Vrl);
Ll=0.15*S*1000*pf;
R=Ll/(3*I*I);
a=del*l*100/(R);
r=sqrt(a/%pi);
re=r*exp(-1/4);
L=0.2*50*(10^-3)*log(d/re);
X=2*%pi*50*L;
X_=floor(X*100)/100;
Vs=Vrl/sqrt(3)+(I*R*pf)+(I*X_*sind(acosd(pf)));
Vsl=sqrt(3)*Vs;
printf("Sending end line voltage= %.4fkV\n",Vsl/1000)
spf=(Vrl*pf/sqrt(3)+I*R)/Vs;
printf("Sending end power factor= %.3f lagging\n",spf);
nt=S*pf*100/(S*pf+(Ll/1000));
printf("Transmission efficiency= %.3f percent\n",nt)
Pr=((Vsl-Vrl)*100)/Vrl;
printf("Percentage regulation= %.3f percent\n",Pr);

