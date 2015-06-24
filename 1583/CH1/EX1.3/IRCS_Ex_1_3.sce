clc
//Chapter 1:Introduction to Radio Communication
//example 1.3 page no 3
//given
disp('The transfer function has no finite zeros ')
p=poly([1 0.5 1],"s","c")
x=roots(p)
disp('The poles ')
disp(x)
