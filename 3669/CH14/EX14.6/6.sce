
//Variable declaration
lamda1=650*10**-9;      //wavelength(m)
lamda2=500*10**-9;      //wavelength(m)
D=1;    //distance(m)
d=0.5*10**-3;     //seperation(m)
n=10;

//Calculation
x=n*lamda1*D/d;    //least distance of the point(m)

//Result
printf('least distance of the point is %0.3f   mm  \n',int(x*10**3))