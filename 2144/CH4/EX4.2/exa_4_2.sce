// Example 4.2
clc;
clear;
close;
// Given data
T1= 800+273;// in K
T2= 400+273;// in K
T3= 179+273;// in K
T0= 25+273;// in K
Q= 2018.4;// heat taken by water in kJ/kg
// Formula mCp*(T1-T2)= Q
mCp= Q/(T1-T2);
delta_Qgas= mCp*integrate('1/T','T',T1,T2);// in kJ/K
delta_Qwater= Q/T3;// in kJ/K
delta_Qnet= delta_Qwater+delta_Qgas;//  in kJ/K
disp(delta_Qnet,"Net entropy changes in kJ/K is : ")
E1= T0*abs(delta_Qgas);// Original unavailable energy in kJ
E2= T0*delta_Qwater;//unavailable energy after heat transfer in kJ
E= E2-E1;// in increase in unavailable energy in kJ
disp(E,"The increase in unavailable energy in kJ is : ")

// Note: There is some difference in the value of increase in unavailable energy because in the book the value of change of entropy of the gas is not correct.
