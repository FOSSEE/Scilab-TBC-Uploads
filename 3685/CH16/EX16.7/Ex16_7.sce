clc
a = 21.89 // stochiometric coefficient
y = 18.5 // stochiometric coefficient
x = 8.9 // stochiometric coefficient
PC = 100*(x*12)/((x*12)+(y)) // Carbon percentage
PH = 100-PC // Hydrogen percentage
AFR = ((32*a)+(3.76*a*28))/((12*x)+y) //Air fuel ratio
EAU = (8.8*32)/((21.89*32)-(8.8*32)) // Excess air used

printf("\n Example 16.7\n")
printf("\n The composition of fuel is %f percent Hydrogen and %f percent Carbon",PH,PC) //The answer provided in the textbook is wrong
printf("\n Air fuel ratio is %f ",AFR)
printf("\n Percentage of excess air used is %f percent",EAU*100)
//The answers vary due to round off error
