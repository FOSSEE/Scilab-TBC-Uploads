clc
//Example 11.9
printf("Given")
disp('Power of induction motor=50kW ,power factor is 0.8 lag,Source voltage is 230V')
disp('The wish of the consumer is to raise the power factor to 0.95 lag')
//Let S1 be the complex power supplied to the indiction motor
V=230;Pmag=50*10^3;pf=0.8;
Pang=(acos(pf)*180)/%pi
S1mag=Pmag/pf
S1ph=Pang
x=S1mag * cos (( Pang * %pi ) /180) ;
y=S1mag * sin (( Pang * %pi ) /180) ;
z= complex (x,y)
disp(z ,'S1=')
//To achieve a power factor of 0.95
pf1=0.95
//Now the total complex power be S
P1ang=(acos(pf1)*180)/%pi
Smag=Pmag/pf1
Sph=P1ang
a=Smag * cos (( P1ang * %pi ) /180) ;
b=Smag * sin (( P1ang * %pi ) /180) ;
c= complex (a,b)
disp(c,'S=')
//Let S2 be the complex power drawn by the corrective load
S2=c-z
disp(S2,'S2=')
disp('Let a phase angle of voltage source selected be 0 degree')
//Let I2 be the current
I2=-S2/V
//Let Z2 be the impedance of corrective load
Z2=V/I2
disp(Z2,'Z2=')

