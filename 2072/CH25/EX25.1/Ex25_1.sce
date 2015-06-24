//Chapter 25
clc
//Example 1
//given
q=-50 // Near point of an eye in cm
p=25 //object location in cm
//a) focal length calculation
//Using Thin Lens equation 1/f=((1/p)+(1/q))
f=p*q/(p+q)
disp(f,"a) focal length f in cm is")
//b) power of the lens
f1=50*10^-2// focal length in meters
P=1/f1
disp(P,"Power of the lens in diopters is")


