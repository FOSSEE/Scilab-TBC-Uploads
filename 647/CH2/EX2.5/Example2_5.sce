clear;
clc;

// Example: 2.5
// Page: 41

printf("Example: 2.5 - Page: 41\n\n");

// Solution

//*****Data*****//
// For constant pressure process 1-2:
W12 = -100;// [kJ]
Q12 = -50;// [kJ]
// For constant volume process 2-3:
Q23 = 80;// [kJ]
// process 3-1: Adiabatic process
//**************//

// The internal energy of process 1-2 can be calculated as:
delta_U12 = Q12 - W12;// [kJ]
printf("Change in Internal Energy for process 1-2 is %d kJ\n",delta_U12);
// For the process 2-3:
// As the process is constant volume process:
W23 = 0;// [kJ]
delta_U23 = Q23 - W23;// [kJ]
printf("Change in Internal Energy for process 2-3 is %d kJ\n",delta_U23);

// For process 3-1:
// Since the process is adiabatic, ther is no heat transfer between the system and the surrounding.
Q31 = 0;// [kJ]
// For a cyclic process, the internal energy change is zero.
// delta_U12 + delta_U23 + delta_U31 = 0
delta_U31 = -(delta_U12 + delta_U23);// [kJ]
// Putting the value of delta_U31:
W31 = Q31 - delta_U31;// [kJ]
printf("Change in Internal Energy for process 3-1 is %d kJ\n",delta_U31);
printf("The work done during the adiabatic process is %d kJ\n",W31);