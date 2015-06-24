// Chapter9
// Page.No-440
// Example_9_10
// Design of current source
// Given
clear;clc;
Vr=5; // Voltage in volt
Il=0.25; // Load current in ampere
Rl=48; // Load resistance in ohm
dropout_volt=2; // Constant for IC7805C
R=Vr/Il; // Approximate result sice Iq is negligible in the eq. Il=(Vr/Il)+Iq where Iq is quiescent current
printf("\n Resistance R is = %.f ohm \n",R) // Result
Vl=Rl*Il;
Vo=Vr+Vl;
printf("\n Output voltage Vo is = %.f V \n",Vo) // Result
Vin=Vo+dropout_volt;
printf("\n Min input voltage Vin is = %.f V \n",Vin) // Result