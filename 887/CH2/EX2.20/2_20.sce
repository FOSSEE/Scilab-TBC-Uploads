clc
//ex2.20
V_s_1=20;      //voltage source
R_1=5;
R_2=10;
i_s_1=1;      //current source
//Method 1: To transform current source and R_2 into a voltage source in series with R_2
V_s_2=i_s_1*R_2;      //source transformation
i_1=(V_s_1-V_s_2)/(R_1+R_2);      //clockwise KVL
i_2=i_1+i_s_1;      //KCL at top node of original circuit
printf(" All the values in the textbook are approximated hence the values in this code differ from those of Textbook")
disp('By current source to voltage source transformation:')
disp(i_1,'current i1 in amperes')
disp(i_2,'current i2 in amperes')
//Method 2: To transform voltage source and R_1 into a current source in parallel with R_1
i_s_2=V_s_1/R_1;      //source transformation
i_t=i_s_2+i_s_1;      //total current
i_2=R_1*i_t/(R_1+R_2)      //current-division principle
i_1=i_2-i_s_1;      //KCL at top node of original circuit
disp('By voltage source to current source transformation:')
disp(i_1,'current i1 in amperes')
disp(i_2,'current i2 in amperes')
disp('In any method we get the same answers.')

