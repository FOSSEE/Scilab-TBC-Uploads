clear
//Given
I=0.5
R=100
t=30
a=4.2
m=200                      //g
w=10                      //g

//Calculation
H=I**2*R*t*60/a
A=H/(m+w)

//Result
printf("\n The rise of temperature is %0.2f  degree C",A)
