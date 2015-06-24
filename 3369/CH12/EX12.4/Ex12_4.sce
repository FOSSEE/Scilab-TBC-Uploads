//Chapter 12, Exmaple 4, page 406
//Calculate resistivity
clear
clc
// Baased on Equation 12.1*10**2
c4 = 0.5*10**2/10 // micro F
Ic = 2*10**4*2*%pi*5*50*10**-6/sqrt(3)
C = (sqrt(3)*10000*Ic)*(10**-9*10**6)
printf("\n C4 = %f mircoF ",c4)
printf("\n Line charging current = %f A ",Ic)
printf("\n Charging = %f kVA ",C)

// Answers may vary due to round off error
