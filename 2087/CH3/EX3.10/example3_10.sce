

//example 3.10
//calculate Duty of water
clc;
//Given
B=120;      //Base period
delta=92;   //total depth requirement of crop

D=8.64*B*100/delta;
D=round(D);
mprintf("Duty of water=%f hectares/cumec.",D);
