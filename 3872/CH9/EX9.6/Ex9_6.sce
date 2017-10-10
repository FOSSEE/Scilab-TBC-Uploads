//Book - Power system: Analysisi & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J.Overbye
//Chapter-9 ;Example 9.6
//Scilab Version - 6.0.0; OS - Windows

clc;
clear;


Vf=1.05                                                     //Prefault voltage in per unit
Z0=%i*0.250                                                 //Zero sequence impedance in per unit
Z1=%i*0.13893                                               //Positive sequence impedance in per unit
Z2=%i*0.14562                                               //Negative sequence impedance in per unit
Zf=0                                                        //Fault through impedance in per unit
Zpr=0.20                                                    //The positive sequence thevenin motor impedance at bus 2
Zpl=0.455                                                   //The positive sequence thevenin line impedance at bus 2
Znr=0.21                                                    //The negative sequence thevenin motor impedance at bus 2
Znl=0.475                                                   //The negative sequence thevenin line impedance at bus 2


I1=Vf/(Z1+((Z0*Z2)/(Z0+Z2)))                                //Positive sequence fault current in per unit
I2=-I1*(Z0/(Z0+Z2))                                         //Negative sequence fault current in per unit
I0=-I1*(Z2/(Z0+Z2))                                         //Zero sequence fault current in per unit
Iline0=0                                                    //Zero sequence fault current from the line in per unit
Imotor0=I0                                                  //Zero sequence motor current from the motor in per unit
Iline1=(Zpr/(Zpr+Zpl))*I1                                   //Positive sequence fault current from the line in per unit
Ilead1=Iline1*exp(%i*(30)*(%pi/180))                        //Positive sequence fault current from the line leads by 30 degree in per unit
Imotor1=(Zpl/(Zpr+Zpl))*I1                                  //Positive sequence motor current from the motor in per unit
Iline2=(Znr/(Znr+Znl))*I2                                   //Negative sequence fault current from the line in per unit
Ilag2=Iline2*exp(%i*(-30)*(%pi/180))                        //Negative sequence fault current from the line lags by 30 degree in per unit
Imotor2=(Znl/(Znr+Znl))*I2                                  //Negative sequence motor current from the motor in per unit
a=exp(%i*(120)*(%pi/180))                                   //operator a
Iline=[1 1 1;1 (a^2) a;1 a (a^2)]*[0;Ilead1;Ilag2]          //transforming the line currents to the phase domain
Ilineb=Iline*0.41837                                        //transforming the line currents to the phase domain with base currents of 0.41837 kA

disp(abs(clean(Iline,1e-10)),'The magnitude of transforming the line currents to the phase domain in per unit for each phase is given by:');
disp(atand(imag(Iline),real(Iline)),'The angle of transforming the line currents to the phase domain in degreess for each phase is given by:');
disp(abs(clean(Ilineb,1e-10)),'The magnitude of transforming the line currents to the phase domain in kA for each phase is given by:');
disp(atand(imag(Ilineb),real(Ilineb)),'The angle of transforming the line currents to the phase domain in degreess for each phase is given by:');




