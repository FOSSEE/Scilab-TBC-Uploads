//chapter 10
//eaxmple 10.6
//page 354
Iq=4.3*10^-3;
R2=100;
Vout=7;//for maximum output voltage
Vr=5;//for R2 is maximum
//Vout=Vout(1+R2/R1)+Iq*R2
R1=100/(((Vout-Iq*R2)/Vr)-1)