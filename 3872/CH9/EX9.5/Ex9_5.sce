//Book - Power system: Analysisi & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J.Overbye
//Chapter-9 ;Example 9.5
//Scilab Version - 6.0.0; OS - Windows

clc;
clear;

Sb=100                                          //Base value of system in MVA
Vb=13.8                                         //Base voltage of system in kV
Vf=1.05                                         //Prefault voltage in per unit
Z0=%i*0.250                                     //Zero sequence impedance in per unit
Z1=%i*0.13893                                   //Positive sequence impedance in per unit
Z2=%i*0.14562                                   //Negative sequence impedance in per unit
Zf=0                                            //Fault through impedance in per unit
Zpr=0.20                                        //The positive sequence thevenin motor impedance at bus 2
Zpl=0.455                                       //The positive sequence thevenin line impedance at bus 2
Znr=0.21                                        //The negative sequence thevenin motor impedance at bus 2
Znl=0.475                                       //The negative sequence thevenin line impedance at bus 2


I1=Vf/(Z1+((Z0*Z2)/(Z0+Z2)))                    //Positive sequence fault current in per unit
I2=-I1*(Z0/(Z0+Z2))                             //Negative sequence fault current in per unit
I0=-I1*(Z2/(Z0+Z2))                             //Zero sequence fault current in per unit
a=exp(%i*(120)*(%pi/180))                       //operator a
Isf=[1 1 1;1 (a^2) a;1 a (a^2)]*[I0;I1;I2]      //Subtransient fault current in each phase in per unit
Ib2=Isf*((Sb)/(Vb*sqrt(3)))                     //Using the base current 4.1837kA at bus 2 in kA
In=3*I0                                         //Neutral fault current in per unit
In2=In*((Sb)/(Vb*sqrt(3)))                      //Neutral fault current in kA
Iline0=0                                        //Zero sequence fault current from the line in per unit
Imotor0=I0                                      //Zero sequence motor current from the motor in per unit
Iline1=(Zpr/(Zpr+Zpl))*I1                       //Positive sequence fault current from the line in per unit
Imotor1=(Zpl/(Zpr+Zpl))*I1                      //Positive sequence motor current from the motor in per unit
Iline2=(Znr/(Znr+Znl))*I2                       //Negative sequence fault current from the line in per unit
Imotor2=(Znl/(Znr+Znl))*I2                      //Negative sequence motor current from the motor in per unit
Iline=[1 1 1;1 (a^2) a;1 a (a^2)]*[Iline0;Iline1;Iline2]  //transforming to the phase domain for the line
Ilineb=Iline*(0.41837)                          //Transforming to the phase domain with base currents of 0.41837 kA for the line in kA
Imotor=[1 1 1;1 (a^2) a;1 a (a^2)]*[Imotor0;Imotor1;Imotor2]  //transforming to the phase domain for the motor
Imotorb=Imotor*((Sb)/(Vb*sqrt(3)))              //Transforming to the phase domain with base currents of 4.1837 kA for the motor in kA

disp(abs(clean(Ib2,1e-10)),'The magnitude of subtransient fault current in each phase in kA is given by:');
disp(atand(clean(imag(Ib2),1e-10),clean(real(Ib2),1e-10)),'The angle of subtransient fault current in each phase in degrees is given by:');
printf('The magnitude neutral fault current is %.4f kA and its angle is %.4f degree\n',abs(In2),atand(imag(In2),real(In2)));
disp(abs(clean(Ilineb,1e-10)),'The magnitude of fault current contribution from the line in kA for each phase is given by: ');
disp(atand(clean(imag(Ilineb),1e-10),clean(real(Ilineb),1e-10)),'The angle of fault current contribution from the line in degrees for each phase is given by:');
disp(abs(clean(Imotorb,1e-10)),'The magnitude of fault current contribution from motor in kA for each phase is given by:');
disp(atand(clean(imag(Imotorb),1e-10),clean(real(Imotorb),1e-10)),'The angle of fault current contribution from motor in degrees for each phase is given by:');


