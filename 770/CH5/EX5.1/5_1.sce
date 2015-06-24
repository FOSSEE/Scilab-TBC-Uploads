clear;
clc;

//Example - 5.1
//Page number - 184
printf("Example - 5.1 and Page number - 184\n\n");


//Given
T_1 = 500+273.15;//[C] - Condensation temperature
T_2 = 250+273.15;//[C] - Temperature at which vaporization takes place.

T_3 = 25+273.15;//[C] - Ambient atmospheric temperature.

Q = 1;//We are taking a fictitious value of Q, its value is not given.But we need to initialize it wid some value,so we are taking its value as Q=1.

//The exergy content of the vapour at 500 C,
Ex_T_1 = Q*(1-(T_3/T_1));
Ex_T_2 = Q*(1-(T_3/T_2));
//Therefore,loss in exergy is given by
Ex_loss = Ex_T_1 - Ex_T_2;
//Fraction of exergy lost due to irreversible process is,
Ex_fraction =(Ex_loss/Ex_T_1);
printf(" The fraction of exergy lost due to irreversible process is %f",Ex_fraction);