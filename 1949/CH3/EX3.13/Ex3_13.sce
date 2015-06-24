//Chapter-3,Example 3_13,Page 3-23
clc()

//Given Data:
n1=1.5                //R.I. of core
delta=0.0005          //Fractional index difference

//Calculations:
//(a):
//Delta=(u1-u2)/u1
n2=n1-(n1*delta)     //R.I. of cladding
printf('(a)Refractive Index of cladding of fibre is =%.2f \n \n',n2)

//(b):
phi=asin(n2/n1)*180/%pi         //Critical internal reflection angle
printf(' (b)Critical internal reflection angle of Fibre is =%.1f degrees \n \n',phi)

//(c):
theta0=asin(sqrt(n1^2-n2^2))*180/%pi    //External critical Acceptance angle
printf(' (c)External critical Acceptance angle of Fibre is =%.2f degrees \n \n',theta0)

//(d):
NA=n1*sqrt(2*delta)          //Formula to find Numerical Aperture
printf(' (d)Numerical Aperture of Fibre is =%.4f \n',NA)
