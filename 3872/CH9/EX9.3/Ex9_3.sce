//Book - Power system: Analysisi & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J.Overbye
//Chapter-9 ;Example 9.3
//Scilab Version - 6.0.0; OS - Windows

clc;
clear;

Xn=0.05                         //motor neutral is grounded through reactance in per unit
Sb=100                          //Base value of system in MVA
Vb=13.8                         //Base voltage of system in kV
Vf=1.05                         //Prefault voltage in per unit
Z0=%i*0.250                     //Zero sequence impedance in per unit
Z1=%i*0.13893                   //Positive sequence impedance in per unit
Z2=%i*0.14562                   //Negative sequence impedance in per unit
Zf=0                            //Fault through impedance in per unit

If0=Vf/(Z0+Z1+Z2+(3*Zf))        //sequence line to ground fault current in per unit
If1=If0;If2=If0;                // Since If0=If1=If2
If=[If0;If1;If2]
Isf=3*If0                       //subtransient fault current in per unit
Ib2=Sb/(Vb*sqrt(3))             //base current at bus 2 in kA
Ib22=Isf*Ib2
Vsf=[0;Vf;0]-([Z0 0 0;0 Z1 0;0 0 Z2]*If)       //sequence componenets of the voltages at the fault in per unit
a=exp(%i*(120)*(%pi/180));                     //operator a
Vlg2=[1 1 1;1 (a^2) a;1 a (a^2)]*Vsf           //line to ground voltages at faulted bus 2 in per unit
for i=1:3                            //This loop is included to avoid discrepancies in angle values when the voltage value is near to zero or zero
    if abs(Vlg2(i))<1e-6             //For example, atand(0,0) gives 0 degree and atand(0,-0) gives 180 degree
        Vlg2(i)=0;
    end
end                

printf('The magnitude of subtransient at bus 2 in is %.4f kA and its angle is %.4f degrees\n',abs(Ib22),atand(imag(Ib22),real(Ib22)));
disp(abs(Vlg2),'The magnitude of line to ground voltages at faulted bus 2 in per unit is:');
disp(atand(imag(Vlg2),real(Vlg2)),'The angle of line to ground voltages at faulted bus 2 is :');


