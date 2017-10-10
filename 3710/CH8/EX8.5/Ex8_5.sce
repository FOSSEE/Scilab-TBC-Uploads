//Example 8.5, Page Number 377
//The Function fpround(dependency) is used to round a floating point number x to n decimal places
clc;

n1=1.48
n2=1.46 
no=1

theta=asin(n2/n1)
theta=theta*(180/%pi)

//Using equation 8.22
delta=((n1**2)-(n2**2))/(2*(n1**2))
delta=fpround(delta,4)

//Using expression 8.22a
deltaa=(n1-n2)/n1
deltaa=fpround(deltaa,4)

NA=sqrt((n1**2)-(n2**2))
NA=fpround(NA,3)

a=asin(NA) //a is a fiber parameter
a=a*(180/%pi)
a=fpround(a,2)

mprintf("The Delta Parameter is:%.4f\n",delta)
mprintf(" The Approximated Delta Parameter is:%.4f\n",deltaa)
mprintf(" The Numerical aperture is:%.3f\n",NA)
mprintf(" The Value of Alpha Max is:%d degrees",a)
