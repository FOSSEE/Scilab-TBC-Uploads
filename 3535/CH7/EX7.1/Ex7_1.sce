//Chapter 7, Example 7.1, Page 177
clc
clear
// Thickness of shield
Wmu = 0.07066 // meu of water
Lmu = 0.7721 // meu of lead
Wx= log(10)*(1/Wmu)
Lx= log(10)*(1/Lmu)
printf("Thickness of water shield = %f cm\n",Wx)
printf(" Thickness of lead shield = %f cm",Lx)
//Answers may vary due to round off error
