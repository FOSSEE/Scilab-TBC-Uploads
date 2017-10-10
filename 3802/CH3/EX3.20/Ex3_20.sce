//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex3_20.sce.

clc;
clear;

Vm=16*sqrt(2);   //Maximum voltage value in volt
Vrms=Vm/sqrt(2);   //RMS voltage in volt
R=1;    //resistance in ohm
C=-%i;  //capacitance in ohm
R1=2;    //resistance in ohm
R2=3;    //resistance in ohm
C1=-%i;  //capacitance in ohm
//After simplication of the network by star-delta transformation
Za=complex(2,-10)/26;
Zb=complex(3,-15)/26;
Zc=complex(30,6)/26;
Voc=(Vrms*(Zc+C))/(R+Za+Zc+C);
Zs=(1/((1/(Za+R))+(1/(Zc+C))))+Zb;

printf("\n (a)")
Zl=Zs;
Zl_mag=sqrt(real(Zl)^2+imag(Zl)^2);
Zl_ang=atand(imag(Zl)/real(Zl));
printf("\n     Z_L=%1.2f angle:%2.2f degree \n",Zl_mag,Zl_ang)

printf("\n (b)")
Voc_mag=sqrt(real(Voc)^2+imag(Voc)^2);
Pmax=Voc_mag^2/(2*real(Zl));
printf("\n     Maximum power=%2.2f watt \n",Pmax)
//There is a mistake in Zs calculation .Zs=0.7555-0.8539i is wrong  .the correct value of Zs=0.6829-0.8536i
//So the answer vary
