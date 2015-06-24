//chapter 16
//example 16.2
//page 672
printf("\n")
printf("given")
f=40*10^3;L=100*10^-3;vp=8;
disp("colpitts oscillator")
Ct=1/(4*3.14*3.14*(f^2)*L)
C1=10*Ct
C2=1/((1/Ct)-(1/C1))
C2=180*10^-12;//use standard value
Xc2=1/(2*3.14*f*C2)
Xc1=1/(2*3.14*f*C1)
R1=10*Xc1
R1=27*10^3;//use standard value
Acl=C1/C2
R2=Acl*R1
R2=270*10^3;//use stabdard value
R3=(R1*R2)/(R1+R2)
f2=Acl*f
SR=2*3.14*f*vp