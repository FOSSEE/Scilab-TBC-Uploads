clc; clear; close;

Rint=0.054;//in ohm/um
Cint=0.1;//in fF/um
l=20000;//in um
Reqn=12500;//in ohm
Cg=2;//in fF/um
Ceff=1;//in fF/um
W=0.2;//in um
CG=Cg*W;//in fF
CJ=Ceff*W;//in fF
B=2;
N=round(sqrt((Rint*Cint*l*l)/(2*Reqn*(CG+CJ)*(1+B))));
disp(N,'Number of segments in wire=');
M=round(sqrt((Reqn*Cint)/(CG*(1+B)*Rint)));
disp(M,'Buffer size=');
Reff=round(Reqn/M);
disp(Reff,'Buffer resistance(in ohms)=');
Cself=Ceff*(2*W+W)*M;
disp(Cself,'Buffer output capacitance(in fermifarads)=');
Cfan=Cg*(2*W+W)*M;
disp(Cfan,'Buffer input capacitance(in fermifarads)=');
Telm=7*((Reff*(Cself+(Cint*l/(2*N))))+(Reff+(Rint*l/N))*(((Cint*l/(2*N)))+Cfan));
disp(Telm*10^(-6),'Total delay(in nanoseconds)=');
//answers vary due to roundoff error
