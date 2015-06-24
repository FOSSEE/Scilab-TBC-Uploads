clear;
clc;
//Example 13.3
Is1=10^-14;//reverse saturation currents for Q18 Q19
Is2=3*10^-14;//reverse saturation currents for Q14 Q20
Iref=0.72;
Vt=0.026;
Ic13a=0.25*Iref;
printf('\nIc13a=%.2f mA\n',Ic13a)
Vbe19=0.6;
R10=50;
Ir1o=Vbe19/R10;
printf('\ncurrent in Ro=%.3f mA\n',Ir1o)
Ic19=Ic13a-Ir1o;
printf('\ncurrent in Q19 =%.3fmA\n',Ic19)
Ic19=Ic19*0.001;//A
Vbe19=Vt*log(Ic19/Is1);
printf('\nB-E voltage of Q19=%.2f V\n',Vbe19)
b=200;
Ic19=Ic19*10^6;//micro A
Iv19=Ic19*1000;
Ib18=Ic19/b;
Ir1o=Ir1o*1000;
printf('\nbase current in Q18=%.3f microA\n',Ib18)
Ic18=Ir1o+Ib18;
printf('\ncurrents in Q18=%.3f microA\n',Ic18)
Ic18=Ic18*10^-6;
Vbe18=Vt*log(Ic18/Is1);
printf('\nB-E voltage of Q18=%.2f V\n',Vbe18)
Vbb=Vbe18+Vbe19;
printf('\nvoltage difference Vbb=%.2f V\n',Vbb)
Ic14=Is2*exp(Vbb/(2*Vt));
Ic14=Ic14*10^6;//micro A
printf('\nquiescent currents in Q14 and Q20 =%.fmicroA\n',Ic14)
