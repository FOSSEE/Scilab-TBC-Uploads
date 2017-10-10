clear
//Given
a=10
b=7.0
c=5
d=4
e=8.0

//Calculation
I1=(a+a)/(b+1)
I3=(c+(4*I1))/e
I2=(-a+(6*I3)+I1)/2.0

//Result
printf("\n Current I1= %0.3f A \nI2= %0.3f A \nI3= %0.3f A",I1,I2,I3)
