clear;
clc;
//Example 4.9
Ic=0.894;
i_C=2*Ic;
printf('\nmaximum possible symmetrical peak to peak ac collector current=%.3f mA\n',i_C)
Rc=5;
Rl=2;
vo=i_C*Rc*Rl/(Rc+Rl);
printf('\nmaximum possible symmetrical peak to peak output voltage=%.2f V\n',vo)
iC=Ic+i_C*1/2;
printf('\nmaximum instantaneous collector current=%.3f mA\n',iC)
