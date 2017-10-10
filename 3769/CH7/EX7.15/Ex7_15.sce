clear
//Given
m=900
w=100.0
c=1
a=80
b=4.2
V=210                   //V
x=12
y=60

//Calculation
Hout=(m+w)*c*a
Hin=(V*x*y)/b
Hin1=90/w*Hin
I=Hout/Hin1

//Result
printf("\n Strength of the current is %0.3f  A",I)
