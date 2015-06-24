//example-10.7
//page no-329
//given
//yeild strength of polycrystalline material increases from sigmay1 to sigmay2
sigmay1=118  //MPa
sigmay2=207  //MPa
//decreasing grain diameter from d1 to d2
d1=0.253*10^-3   //m
d2=0.0224*10^-3  //m
//to find the yield strngth at 
d=0.095*10^-3  //m
//as we know that according to hall and petch equation,
//sigmay=sigma0+C/sqrt(d)
//putting sigmay1,sigmay2,d1 and d2.. we get 2 equations
//sigma0+C/sqrt(d1)=sigmay1  -------(1)
//and sigma0+C/sqrt(d2)=sigmay2    -----(2)
//solving equation 1 and 2 we get
sigma0=80.3  //MPa
//and
C=0.1896  //MN/m^(3/2)
//so the yield stress for the grain size
d=0.095*10^-3  //m
sigma=sigma0+C/sqrt(d)  //MPa
printf ("the yield stress for a grainof size of 0.095 mm is %f MPa",sigma)

