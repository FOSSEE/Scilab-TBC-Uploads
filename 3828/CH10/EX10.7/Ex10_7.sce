//Chapter 10 : Crystallography and Crystal Imperfections

clear;

//Variable declaration
x=2                    //x intercept  
y=3                    //y intercept
z=3                    //z intercept

//Calculations          
rx=(1/x)*6             //reciprocal of x intercept
ry=(1/y)*6             //reciprocal of y intercept
rz=(1/z)*6             //reciprocal of z intercept

//Result
mprintf("Miller indices are (%d , %d , %d)",rx,ry,rz)

