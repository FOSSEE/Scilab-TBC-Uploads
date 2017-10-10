//Chapter 4, Example 4.6

clc
//Initialisation'
c1=10*10**-6                   //capacitance in farad
c2=25*10**-6                   //capacitance in farad


//Calculation
c=(c1*c2)/(c1+c2)                   //equivalent parallel capacitance in farad



//Results
printf("Total Capacitance, C = %.2f uF",c*10**6)
