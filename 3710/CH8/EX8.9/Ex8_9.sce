//Example 8.9, Page Number 387
//The Function fpround(dependency) is used to round a floating point number x to n decimal places
clc;

V=2

//From equation 8.29a
w=0.65+(1.619*(V**(-1.5)))+(2.879*(V**-6))
w=fpround(w,3)
mprintf("The Mode Field Irradiance Diameter is:%.3f",w)

//The answer provided in the textbook is wrong
