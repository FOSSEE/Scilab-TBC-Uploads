clear
//Given
a=10
b=5.0
c=9.0
d=19.0

//Calculation
I2=(a-c)/((b*a)-(d*c))
I1=(1-(5*I2))/c
I=I1+I2
pd=I*10

//Result
printf("\n Current through each cell is %0.2f  A",I)
printf("\n Potential difference across 10 ohm wire is %0.3f  V",pd)
