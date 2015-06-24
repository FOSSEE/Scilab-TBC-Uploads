// Given data:
clc
Q1=3e4 // heat required in kJ/h
W=2e3 // work required in kJ/h

Q2=Q1-W // heat abstracted from outside in kJ/h

COP=Q1/(Q1-Q2) // COP of heat pump

printf("Heat abstracted from outside air is %0.2f kJ/h \n ",Q2)
printf("COP of heat pump is %d ",COP)
