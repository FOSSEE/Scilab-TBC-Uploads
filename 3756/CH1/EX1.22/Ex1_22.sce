clc
//
//
//

//Variable declaration
n=10                 //no. of ring
D10=0.5              //Diameter of the 10th ring
lambdaa=5893*10**-8  //Wavelength
    
//Calculations
R=(D10**2)/(4*10*5893*10**-8)
t=(D10**2)*10**4/(8*R)

//Result
printf("\n The Thickness is %0.3f cm",t)
printf("\n The Radius is %0.1f cm",R)
