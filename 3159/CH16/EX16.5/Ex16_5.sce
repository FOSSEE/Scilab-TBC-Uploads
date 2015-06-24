// Calculation of eddy current loss at normal voltage and frequency
clc
Total1 = 2300 // total iron loss in W at 440 V and 50 Hz
Total2 = 750 // total iron loss in W at 220 V and 25 Hz
printf("\n Example 16.5")
W_e = 1/2*(Total1-2*Total2)
printf("\n Eddy current loss at normal voltage and frequency is %dW",4*W_e)

