clc
clear
//input
n1=6//6th order image
n2=5//5th order image
n=3000//lines per cm
//calculation
l=n2*0.11*10^-6/(6-5)//applying dsinx=nl
l1=l+(0.11*10^-6)//applying dsinx=nl
d=1/(n*100)//applying dsinx=nl ,grating space calculation
x=n1*l/d 
y=asind(x)
//output
printf("the wavenlength of first wave is %3.3e m",l)
printf("\nthe wavenlength of second wave is %3.3e m",l1)
printf("\n the angular displacement is %3.3f deg",y)
