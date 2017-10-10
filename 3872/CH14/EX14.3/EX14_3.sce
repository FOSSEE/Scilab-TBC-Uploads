//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 14 ; Example 14.3
//Scilab Version - 6.0.0 ; OS - Windows


clc;
clear;
kV=13.8;                                          //The sending end line voltage in kVolts
Vsln=1.05*kV/sqrt(3);                             //The sending end voltage with 5% above rated in kVolts
Rload=20;                                         //The Wye connected load resistance in Ohm
Xload=40*%i;                                      //The Wye connected load inductive reactance in Ohm
Xc=-40*%i;                                        //The Wye connected capacitive reactance in Ohm
Rline=3;                                          //The line resistance in Ohm
Xline=6*%i;                                       //The line inductive reactance in Ohm
Ztot1=Rline+Xline+(Rload*Xload/(Rload+Xload));    //The total impedance seen by source without capacitance in Ohm
Iline1=Vsln/Ztot1;                                //The line current without shunt capacitor in kA
Vdrop1=(Rline+Xline)*Iline1;                      //The voltage drop across the line without shunt capacitor in KVolts
Vload1=Vsln-Vdrop1;                               //The voltage drop across the load without shunt capacitor in KVolts
Pload1=3*abs(Vload1)^2/Rload;                     //The real power delivered to the load without shunt capacitor in MW
Qload1=3*abs(Vload1)^2/abs(Xload);                //The reactive power delivered to the load without shunt capacitor in MVAR
pf1=cos((atan(Qload1/Pload1)));                   //The power factor of the load without shunt capacitor
Pline1=3*abs(Iline1)^2*Rline;                     //The real power loss in the line without shunt capacitor in MW
Qline1=3*abs(Iline1)^2*abs(Xline);                //The reactive power loss in the line without shunt capacitor in MVAR
Psource1=Pload1+Pline1;                           //The real power delivered by the source without shunt capacitor in MW
Qsource1=Qload1+Qline1;                           //The reactive power delivered by the source without shunt capacitor in MVAR
Ssource1=sqrt(Psource1^2+Qsource1^2);             //The apparent power delivered by the source without shunt capacitor in MVA
Ztot2=Rline+Xline+(1/(1/Rload+1/Xload+1/Xc));     //The total impedance seen by source with capacitance in Ohm
Iline2=Vsln/Ztot2;                                //The line current with shunt capacitor in kA
Vdrop2=(Rline+Xline)*Iline2;                      //The voltage drop across the line with shunt capacitor in KVolts
Vload2=Vsln-Vdrop2;                               //The voltage drop across the load with shunt capacitor in KVolts
Pload2=3*abs(Vload2)^2/Rload;                     //The real power delivered to the load with shunt capacitor in MW
Qload2=3*abs(Vload2)^2/abs(Xload);                //The reactive power delivered to the load with shunt capacitor in MVAR
pf2=cos((atan(Qload2/Pload2)));                   //The power factor of the load with shunt capacitor
Pline2=3*abs(Iline2)^2*Rline;                     //The real power loss in the line with shunt capacitor in MW
Qline2=3*abs(Iline2)^2*abs(Xline);                //The reactive power loss in the line with shunt capacitor in MVAR
Qc=3*abs(Vload2)^2/abs(Xc);                       //The reactive power delivered by the shunt capacitor inb MVAR
Psource2=Pload2+Pline2;                           //The real power delivered by the source with shunt capacitor in MW
Qsource2=Qload2+Qline2-Qc;                        //The reactive power delivered by the source with shunt capacitor in MVAR
Ssource2=sqrt(Psource2^2+Qsource2^2);             //The apparent power delivered by the source with shunt capacitor in MVA
printf('a. Without Capacitor');
printf('\nThe magnitude of line current is %f kA and %f degree',abs(Iline1),atand(imag(Iline1)/real(Iline1)));
printf('\nThe magnitude of voltage drop in the line is %f kV and %f degree',abs(Vdrop1),atand(imag(Vdrop1)/real(Vdrop1)));
printf('\nThe magnitude of voltage drop in the load is %f kV and %f degree',abs(Vload1),atand(imag(Vload1)/real(Vload1)));
printf('\nThe real and reactive power delivered to the three phase load is %f MW and %f MVAR',Pload1,Qload1);
printf('\nThe load power factor is %f lagging',pf1);
printf('\nThe real and reactive power losses in the line is %f MW and %f MVAR',Pline1,Qline1);
printf('\nThe real power, reactive power and Apparent power delivered by the source is %f MW , %f MVAR and %f MVA',Psource1,Qsource1,Ssource1);
printf('\n\n\nb. With Capacitor');
printf('\nThe magnitude of line current is %f kA and %f degree',abs(Iline2),atand(imag(Iline2)/real(Iline2)));
printf('\nThe magnitude of voltage drop in the line is %f kV and %f degree',abs(Vdrop2),atand(imag(Vdrop2)/real(Vdrop2)));
printf('\nThe magnitude of voltage drop in the load is %f kV and %f degree',abs(Vload2),atand(imag(Vload2)/real(Vload2)));
printf('\nThe real and reactive power delivered to the three phase load is %f MW and %f MVAR',Pload2,Qload2);
printf('\nThe load power factor is %f lagging',pf2);
printf('\nThe real and reactive power losses in the line is %f MW and %f MVAR',Pline2,Qline2);
printf('\nThe reactive power delivered by the shunt capacitor bank is %f MVAR',Qc);
printf('\nThe real power, reactive power and Apparent power delivered by the source is %f MW , %f MVAR and %f MVA',Psource2,Qsource2,Ssource2);
                                                  //The third part of this question cannot be executed in SCILAB because of its theoritical nature
