                             //EXAMPLE 7-38    PG NO-493
R1=4;                          //RESISTANCE
R2=4;                          //RESISTANCE
R3=8/9;                          //RESISTANCE
Z10=[R1*(R3+R2)]/[R1+R2+R3];
disp(' Impedance is  (Z10)  = '+string(Z10)+'ohm');
Z20=[R1*(R3+R2)]/[R1+R2+R3];
disp(' Impedance is  (Z20)  = '+string(Z20)+'ohm');
Z1S=[R1*R3]/[R1+R3];
disp(' Impedance is (Z1S)  = '+string(Z1S)+'ohm');
Z2S=[R1*R3]/[R1+R3];
disp(' Impedance is (Z1S)  = '+string(Z2S)+'ohm');
