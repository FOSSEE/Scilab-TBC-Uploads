
//Variable declaration
lamda=500*10**-9;    //wavelength(m)
D=2;     //diameter(m)
beta=(5/100)*10**-2;     //fringe width(m)

//Calculation
d=lamda*D/beta;      //separation between slits(m)

//Result
printf('separation between slits is %0.3f   mm  \n',int(d*10**3))