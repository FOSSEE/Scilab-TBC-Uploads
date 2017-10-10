clear
//Given
a=4
b=2.0
c=8
d=5
e=3.0

//Calculation
I1=((a*c)+(b*e))/((b*c)+(d*e))
I2=(a-(2*I1))/e
V=(I1-I2)*5

//Result
printf("\n (i) Current through each battery is %0.2f A and %0.2f A",I1,I2)
printf("\n (ii) Terminal voltage is %0.2f  V",V)
