//Chapter-3,Example 3_6,Page 3-20
clc()

//Given Data:
NA=0.22              // Numerical Aperture of Fibre
delta=0.012          //Fractional index

//Calculations:
//Delta=(u1-u2)/u1
u1=NA/sqrt(2*delta)  //Formula
u2=u1-(u1*delta)     //Formula

printf('Refractive Index of core of fibre is =%.2f \n \n',u1)
printf(' Refractive Index of cladding of fibre is =%.2f \n',u2)
