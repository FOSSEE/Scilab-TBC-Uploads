clc; clear; close;

Ctag=450;//in fF
Cin=3;//in fF
Pinv=0.5;
Cg=2;//in fF/um
Reqn=12.5;//in kiloohm
Ln=0.2;//in um
C=200;//in fF
N=round(log10(Ctag/Cin)/log10(4));
disp(N,'Number of stages of drivers=');
SE=(Ctag/Cin)^(1/N);
disp(SE,'Optimal stage effort=');
D=(N*SE)+(N*Pinv);
disp(D,'Normalised delay=');
Tinv=3*Cg*Reqn*Ln;
Ttag=Tinv*D;
disp(Ttag,'Actual delay(in picoseconds)=');
Reff=Reqn/8;
Tmatchline=Reff*C;
disp(Tmatchline,'Delay for the matchline(in picoseconds)=');
Ttotal=Ttag+Tmatchline;
disp(Ttotal,'Total delay (in picoseconds)=');
//answers vary due to round off error 
