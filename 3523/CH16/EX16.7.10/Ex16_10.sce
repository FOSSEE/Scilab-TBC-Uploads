clear all
clc
close

n=12;//no ofstage
C1=0.125*1e-6;//Each stage capacitor in F
C2=1000e-12;//Load capacitance in F
R1=70;//Front resistance in ohm
R2=400;//Tail resistance in ohm

R1T=R1*n;
R2T=R2*n;
C1T=C1/n;

theta=sqrt(C1T*C2*R1T*R2T);

eta=1/(1+(1+R1T/R2T)*C2/C1T);

alpha=R2T*C1T/(2*eta*theta);

//Wavetail time in us
T2=7*theta*1e6;
printf('Wave tail time in us %f',T2)

//Wave front time in us
T1=T2/25;
printf('Wave front time in us %f',T1)
