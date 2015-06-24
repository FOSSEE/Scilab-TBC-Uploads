//Ex8_6 pg-436
clc

A=50 //voltage gain
per=10/100 //percentage of negative feedback applied
BA=per*A //value of Beta*A
Af=A/(1+BA) //gain after negative feedback
printf("(1) Voltage gain after negative feedback \n")
printf("                              = %.2f\n ",Af)

A=50 //voltage gain
per=5/100 //percentage of negative feedback applied
BA=per*A //value of Beta*A
Af1=A/(1+BA) //gain after negative feedback
printf("(2) Voltage gain after negative feedback \n")
printf("                              = %.1f\n ",Af1)
disp("So the new gain is not double the previous case")
disp("    The difference between expected value and actual value of gain obtained is")
diff_value=2*Af-Af1 
printf("                             = %.2f",diff_value)

printf("\n\n(3) To have the gain double of case(1) i.e 16.66,let the \n feedback introduced be Beta(assuming negative feedback)")
Af=16.66 //voltage gain with negative feedback
A=50 //voltage gain
Beta=((A/Af)-1)/A //feedback in percentage
printf("\n                  Beta = %.2f",Beta)
