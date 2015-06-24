//Chapter 3, Exmaple 17, page 110
//Determine the ion density
clc
clear
//Based on equation 3.50 and 3.52
nplus = 10**11*%e**(-1.6*10**-19*5*0.02/(1.38*10**-23*293))
nminus = 10**11*%e**(-1.6*10**-19*5*-0.02/(1.38*10**-23*293)) //textbook uses 0.02 inseatead of -0.02. In the program I have used -0.02
printf("\n+(0.02) = %e ions/m^3 ",nplus)
printf("\n+(-0.02) = %e ions/m^3 ",nminus)

//answers may vary due to round off error
