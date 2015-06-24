clc
//ex13.7
V_CC=15;
R_1=10*10^3;
R_2=5*10^3;
R_C=1*10^3;
R_E=1*10^3;
V_BE=0.7;
R_B=1/((1/R_1)+(1/R_2));      //thevenin resistance
V_B=V_CC*R_2/(R_1+R_2);      //thevenin voltage
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")

//a)B=100
disp('For beta B=100:')
B=100;      //beta value
i_B=(V_B-V_BE)/(R_B+(B+1)*R_E);      //base current
i_C=B*i_B;      //collector current
i_E=i_B+i_C;      //emitter current
V_CE=V_CC-i_C*R_C-i_E*R_E;      //collector to emitter voltage
disp(i_C,'collector current in amperes')
disp(V_CE,'collector to emitter voltage in volts')

//b)B=300
disp('For beta B=300:')
B=300;      //beta value
i_B=(V_B-V_BE)/(R_B+(B+1)*R_E);      //base current
i_C=B*i_B;      //collector current
i_E=i_B+i_C;      //emitter current
V_CE=V_CC-i_C*R_C-i_E*R_E;      //collector to emitter voltage
disp(i_C,'collector current in amperes')
disp(V_CE,'collector to emitter voltage in volts')
