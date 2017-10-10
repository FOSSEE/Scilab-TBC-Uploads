clear
//Given
a=-3
b=4.0
c=3

//Calculation
I1=a/(b+(c**2))
I2=-1-c*I1
I3=-(I1+I2)

//Result
printf("\n Current through each cell is %0.2f A  %0.2f A and %0.2f A",I1,I2,I3)
