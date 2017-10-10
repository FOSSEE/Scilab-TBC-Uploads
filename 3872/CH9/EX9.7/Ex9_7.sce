//Book - Power system: Analysisi & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J.Overbye
//Chapter-9 ;Example 9.7
//Scilab Version - 6.0.0; OS - Windows

clc;
clear;

Vf=1.05                                                     //Prefault voltage in per unit
Zf=0                                                        //Fault through impedance in per unit


Ybus0=-%i*[20 0;0 4]                                        //zero sequence bus admittance matrix in per unit
Zbus0=inv(Ybus0)                                            //zero sequence bus impedance matrix in per unit
Ybus1=-%i*[9.9454 -3.2787;-3.2787 8.2787]                   //Positive sequence bus admittance matrix in per unit
Zbus1=inv(Ybus1)                                            //Positive sequence bus admittance matrix in per unit
Ybus2=-%i*[9.1611 -3.2787;-3.2787 8.0406]                   //Negative bus admittance matrix in per unit
Zbus2=inv(Ybus2)                                            //Negative sequence bus admittance matrix in per unit
Z110=%i*0.05                                                //zero sequence impedance Z110 find out from the Zbus0
Z111=%i*0.11565                                             //positive sequence impedance Z111 find out from the Zbus1
Z112=%i*0.12781                                             //negative sequence impedance Z112 find out from the Zbus2
I10=Vf/(Z110+Z111+Z112)                                     //zeor sequence fault current at bus 1 in per unit
I11=I10                                                     //positive sequence fault current at bus 1 in per unit
I12=I11                                                     //Negative sequence fault current at bus 1 in per unit
a=exp(%i*120*%pi/180)                                       //operator a
Isf1=[1 1 1;1 (a^2) a;1 a (a^2)]*[I10;I11;I12]              //Subtransient fault current in each phase at bus 1 in per unit
Z220=%i*0.25                                                //zero sequence impedance Z220 find out from the Zbus0
Z221=%i*0.13893                                             //positive sequence impedance Z221 find out from the Zbus1
Z222=%i*0.14562                                             //negative sequence impedance Z222 find out from the Zbus2
I20=Vf/(Z220+Z221+Z222)                                     //zeor sequence fault current at bus 1 in per unit
I21=I20                                                     //positive sequence fault current at bus 1 in per unit
I22=I21                                                     //Negative sequence fault current at bus 1 in per unit
Isf2=[1 1 1;1 (a^2) a;1 a (a^2)]*[I20;I21;I22]              //Subtransient fault current in each phase at bus 2 in per unit
V1=[0;Vf;0]-[Z110 0 0;0 Z111 0;0 0 Z112]*[I10;I11;I12]      //The sequence components of the line to ground voltages at bus 1 during tha fault at bus 1 with k=1 and n=1 in per unit  
V1lg=[1 1 1;1 (a^2) a;1 a (a^2)]*[V1]                       //The line to ground voltages at bus 1 during tha fault at bus 1 in per unit
Z210=%i*0.05                                                //zero sequence impedance Z210 find out from the Zbus0
Z211=%i*0.11565                                             //positive sequence impedance Z211 find out from the Zbus1
Z212=%i*0.12781                                             //negative sequence impedance Z212 find out from the Zbus2
V2=[0;Vf;0]-[Z210 0 0;0 Z211 0;0 0 Z212]*[I10;I11;I12]      //The sequence components of the line to ground voltages at bus 1 during tha fault at bus 2 with k=2 and n=1in per unit  
V2lg=[1 1 1;1 (a^2) a;1 a (a^2)]*[V2]                       //The line to ground voltages at bus 1 during tha fault at bus 1 in per unit



disp(clean(Zbus0,1e-10),'The zero sequence bus impedance matrix is:');
disp(clean(Zbus1,1e-10),'The positive sequence bus impedance matrix is:');
disp(clean(Zbus2,1e-10),'The negative sequence bus impedance matrix is:');
disp(clean(Isf1,1e-10),'The Subtransient fault current in pu in each phase during fault at bus 1 are:');
disp(clean(Isf2,1e-10),'The Subtransient fault current in pu in each phase during fault at bus 2 are:');
disp(abs(clean(V1lg,1e-10)),'The magnitude of the line to ground voltages at bus 1 in pu during fault at bus 1 :',);
disp(atand(clean(imag(V1lg),1e-10),clean(real(V1lg),1e-10)),'The angle of the line to ground voltages at bus 1 in degrees during fault at bus 1 :',);
disp(abs(clean(V2lg,1e-10)),'The magnitude of the line to ground voltages at bus 2 in pu during fault at bus 1 :',);
disp(atand(clean(imag(V2lg),1e-10),clean(real(V2lg),1e-10)),'The angle of the line to ground voltages at bus 1 in degrees during fault at bus 1 :',);


