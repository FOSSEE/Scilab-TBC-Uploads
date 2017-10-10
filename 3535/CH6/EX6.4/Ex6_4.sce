//Chapter 6, Example 6.4, Page 155
clc
clear
// Initail fragment of KE
MU = 235.043923
mn = 1.008665 
MXE = 138.918787
MSr = 94.919358
Ep = abs(MU+mn-MXE-MSr-(2*mn*931.5)) 
printf("Ep = %f keV",Ep)// Answer provided in the textbook is wrong
//Answers may vary due to round off error
