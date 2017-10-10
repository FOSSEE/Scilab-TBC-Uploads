
//variable declaration
r1 = 7;                //in radians
r2 = 3;                //in radians
d1 = 4;                //Converting from mm to radians
d2 = 6;                //Converting from mm to radians

//calculations
D = (r2-r1)/(d2*10**3-d1*10**3)   //Divergence

//Result
printf('Divergence = %0.3f   *10**-3 radian     \n',(D*10**3))