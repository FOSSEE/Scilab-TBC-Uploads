clc
//ex13.1
V_CE=4;      //It should be high enough so that collector base junction is reverse-biased
i_B=30*10^-6;      //base current, a value is selected from the graph
i_C=3*10^-3;      //collector current corresponding to values of i_B and V_CE
B=i_C/i_B;      //beta value
disp(B,'The value of beta B is')
