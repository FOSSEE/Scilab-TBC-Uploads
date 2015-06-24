//Chapter 5
//Example 5.7
//page 138
//to tabulate characteristics of a system using different methods
clear;clc;

Z=40+125*%i;
Y=%i*10^(-3);
Ir=((50*10^6)/(220000*0.8*sqrt(3)))*(cosd(-36.9)+%i*sind(-36.9));
Vr=220000/sqrt(3);

//(a) Short line approximation
Vs=Vr+Ir*Z;
Vs_line1=Vs*sqrt(3);
Is1=Ir;
pfs1=cos(atan(imag(Vs)/real(Vs))+acos(0.8));
Ps1=sqrt(3)*abs(Vs_line1)*abs(Is1)*pfs1;

//(b) Nominal pi method
A=1+Y*Z/2;
D=A;
B=Z;
C=Y*(1+Y*Z/4);
Vs=A*Vr+B*Ir;
Is2=C*Vr+D*Ir;
Vs_line2=sqrt(3)*Vs;
pfs2=cos(atan(imag(Is2)/real(Is2))-atan(imag(Vs)/real(Vs)));
Ps2=sqrt(3)*abs(Vs_line2)*abs(Is2)*pfs2;

//(c) Exact transmission line equations
rl=sqrt(Z*Y); //propogation constant
Zc=sqrt(Z/Y); //characteristic impedance
A=cosh(rl);
B=Zc*sinh(rl);
C=sinh(rl)/Zc;
D=cosh(rl);
Vs=A*Vr+B*Ir;
Is3=C*Vr+D*Ir;
Vs_line3=sqrt(3)*Vs;
pfs3=cos(atan(imag(Is3)/real(Is3))-atan(imag(Vs)/real(Vs)));
Ps3=sqrt(3)*abs(Vs_line3)*abs(Is3)*pfs3;

//(d) Approximation
A=(1+Y*Z/2);
B=Z*(1+Y*Z/6);
C=Y*(1+Y*Z/6);
D=A;
Vs=A*Vr+B*Ir;
Is4=C*Vr+D*Ir;
Vs_line4=sqrt(3)*Vs;
pfs4=cos(atan(imag(Is4)/real(Is4))-atan(imag(Vs)/real(Vs)));
Ps4=sqrt(3)*abs(Vs_line4)*abs(Is4)*pfs4;

//converting all the values to their standard form before writing it to table

//voltage to kV
Vs_line1=abs(Vs_line1)/1000;
Vs_line2=abs(Vs_line2)/1000;
Vs_line3=abs(Vs_line3)/1000;
Vs_line4=abs(Vs_line4)/1000;

//Current to kA
Is1=Is1/1000;
Is2=Is2/1000;
Is3=Is3/1000;
Is4=Is4/1000;

//power to MW5
Ps1=Ps1/1000000;
Ps2=Ps2/1000000;
Ps3=Ps3/1000000;
Ps4=Ps4/1000000;

//preparinf table
printf("\n\n_______________________________________________________________________________________________________________________");
printf('\n        \t\tShort line \t\t       Nominal Pi \t\t Exact     \t\t Approximation');
printf("\n_______________________________________________________________________________________________________________________");
printf('\n|Vs|line\t\t%0.2fkV        \t\t %0.2fkV\t\t %0.2fkV \t\t %0.2fkV',Vs_line1,Vs_line2,Vs_line3,Vs_line4);
printf('\nIs      \t\t%0.3f@%0.1fdeg kA \t\t%0.2f@%0.1fdeg kA\t\t%0.4f@%0.1fdeg kA\t%0.2f@%0.1fdeg kA',abs(Is1),tand(imag(Is1)/real(Is1)),abs(Is2),tand(imag(Is2)/real(Is2)),abs(Is3),tand(imag(Is3)/real(Is3)),abs(Is4),tand(imag(Is4)/real(Is4)));
printf('\npfs     \t\t%0.3f lagging       \t\t%0.3f leading \t\t%0.3f leading \t\t%0.3f leading',pfs1,pfs2,pfs3,pfs4);
printf('\nPs      \t\t%0.2f MW          \t\t%0.2f MW \t\t%0.2f MW \t\t%0.2f MW',Ps1,Ps2,Ps3,Ps4);
printf("\n_______________________________________________________________________________________________________________________\n\n\n");

