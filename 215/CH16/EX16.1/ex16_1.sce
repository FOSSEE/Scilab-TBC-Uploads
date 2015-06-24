clc
//Example 16.1
disp('Given')
disp('L=2.5mH Q0=5 C=0.01uF')
L=2.5*10^-3; Q0=5; C=0.01*10^-6;
w0=1/sqrt(L*C)
printf("w0= %3.1f krad/s \n",w0*10^-3);
f0=w0/(2*%pi)
alpha=w0/(2*Q0)
printf("alpha= %3.1f Np/s \n",alpha);
wd=sqrt(w0^2-alpha^2)
printf("wd= %3.1f krad/s \n",wd*10^-3);
R=Q0/(w0*C)
printf("R= %3.2f ohm \n",R*10^-3);