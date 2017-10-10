//variable declaration
n1=1.480
n2=1.465
V=2.405
lamda=850*10**-9

//Calculations
delta=(n1**2-n2**2)/(2*n1**2)
a=(V*lamda*10**-9)/(2*%pi*n1*sqrt(2*delta))

//Results
printf('delta =%0.3f \n',(delta))
printf('Core radius,a =%0.3f micro m\n',(a*10**15))
