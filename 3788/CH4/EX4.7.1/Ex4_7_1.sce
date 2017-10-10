//Example 4.7.1
//Calculate the overall CN ratio

//Variables
clc
clear
CNdnratio = 100
CNupratio = 100

CIratio = 24
CIratioindB = 0.004
CN0 = (1/((1/CNupratio) + (1/CNdnratio)))
CN1 = (1/((1/CNupratio) + (1/CNdnratio) + CIratioindB))

//result
printf("CN0 ratio is %f\n",CN0)
printf("The overall CN0 ratio at earth receiveing station is %f ",CN1)
