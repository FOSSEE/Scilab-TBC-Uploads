clc
//ex13.6
V_CC=15;
V_BB=5;
V_BE=0.7;      //assuming the device is in the active state
R_C=2*10^3;
R_E=2*10^3;
i_E=(V_BB-V_BE)/R_E;      //emitter current
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")

//a)B=100
disp('For beta B=100:')
B=100;      //beta value
i_B=i_E/(B+1);      //base current
i_C=B*i_B;      //collector current
V_CE=V_CC-i_C*R_C-i_E*R_E;      //collector to emitter voltage
disp(i_C,'collector current in amperes')
disp(V_CE,'collector to emitter voltage in volts')

//b)B=300
disp('For beta B=300:')
B=300;      //beta value
i_B=i_E/(B+1);      //base current
i_C=B*i_B;      //collector current
V_CE=V_CC-i_C*R_C-i_E*R_E;      //collector to emitter voltage
disp(i_C,'collector current in amperes')
disp(V_CE,'collector to emitter voltage in volts')
