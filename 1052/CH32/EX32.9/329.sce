clc;
//Example 32.9
//page no 516
printf("Example 32.9 page no 516\n\n");
//we have to determine the annulized cost of a new processing plant of enviromental control
//input data
CC=150000//capital cost,$
I=.07//interst
n=5//time,year
CRF=(I*(1+I)^n)/((1+I)^5-1)//capital recovery factor CRF
IC=CRF*CC//installation cost,$
OC=15000//operation cost,$
AC=IC + OC//annulized cost
printf("\n annulized cost AC=%f $",AC);

