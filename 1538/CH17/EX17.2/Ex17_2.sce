//example-17.2
//page no-513
//given
//oxidation loss on the copper surface is 0.1 mm in 25 hours
t1=25  //hours
x1=0.1  //mm
//to find the loss in 300 hours
t2=300  //hours
// as we know that oxidation loss is given by
//x^2=Cp*t
//for t1 and t2 we have following equations
//x1^2=Cp*t1  -------(1)
//x2^2=Cp*t2   -----------(2)
//dividing equation 1 by 2
//we get
x2=x1*sqrt(t2/t1)   //mm
printf ("loss in 300 hours is %f mm",x2)
