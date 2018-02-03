//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 11.4
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;



f=50;                                                          //Supply frequency in Hz
l=450;                                                         //Length of the line in km
V=400;                                                         //Supply voltage in kV
R=0.033;                                                       //Resistance of the line in Ohm/km
L=1.067;                                                       //Inductance of the line in mH/km
C=0.0109;                                                      //Capacitance of the line in microFarad/km
P=420;                                                         //Power in MW
pf=0.95;                                                       //Power factor
Z=R+%i*(2*%pi*f*L*10^(-3));                                    //Impedance of the line in Ohm/km
Y=%i*(2*%pi*f*C);                                              //Admittance of the line in mho/km 
Zc=((Z/Y)^(1/2))*10^(3);                                       //Characteristic impedance of the line in Ohm/km
pro_const=(Z*Y)^(1/2);                                         //Propagation constant  of the line
angle=pro_const*l*10^(-3);
s=sinh(angle);                                                 //Sinusoidal angle
c=cosh(angle);                                                 //Cosine angle
Ir=P*10^(6)/((3)^(1/2)*V*10^(3)*pf);                           //Magnitude of receiving end current in A
Ir1=(Ir*(cosd(-acosd(pf))+%i*sind(-acosd(pf))))*10^(-3);       //Receiving end current including power factor angle
Vr=V/(3)^(1/2);                                                //Receiving end phase voltage in kV
Vs=Vr*c+(Zc*Ir1*s);                                            //Sending end voltage in kV
llv=abs(Vs)*sqrt(3);                                           //Line to line voltage in kV
Is=((Vr*10^(3)/Zc)*s)+(Ir1*c);                                 //Sending end current in A
pfs=cosd(atan(imag(Vs),real(Vs))-atan(imag(Is),real(Is)));     //Sending end power factor
delta=atand(imag(Vs),real(Vs));                                //Load angle in degree
A=cosh(angle);                                                 //Parameter of voltage and current eqn in degree
B=Zc*sinh(angle);                                              //Parameter of voltage and current eqn in Ohm
C=sinh(angle)/Zc;                                              //Parameter of voltage and current eqn in mho
D=A;                                                           //Parameter of voltage and current eqn in degree
reg=(((abs(Vs)/abs(A))-Vr)/Vr)*100;                            //Regulation of the line
inp_pow=(3*abs(Vs)*abs(Is)*pfs)*10^(-3);                       //Input power in MW
eff=(P/inp_pow)*100;                                           //Efficiency of the line

printf("\nVoltage at sending end of the line is %.2f kV",Vs);
printf("\nCurrent at sending end of the line is %.2f A",abs(Is));
printf("\nSending end powerfactor and Load angle of the line is %.4f and %.2f",pfs,delta);
printf("\nABCD parameters of the line is %.3f and %.2f ohm and %.3e mho and %.3f ",A,abs(B),abs(C),D);
printf("\nRegulation of the line is %.1f percentage",reg);
printf("\nEfficiency of the line is %.2f percentage",eff);
                                                                 //Variation present in result due to wrong substitution in Vs




