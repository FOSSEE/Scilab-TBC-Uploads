//Variable declaration
mew_e=0.13;    //mobility of electron(m**2/Vs)
mew_h=0.05;    //mobility of holes(m**2/Vs)
e=1.6*10**-19;
ni=1.5*10**16;      //number of electron hole pairs
N=5*10**28;

//Calculation
sigma1=ni*e*(mew_e+mew_h);    //intrinsic conductivity(ohm-1 m-1)
ND=N/10**8;
n=ni**2/ND;
sigma2=ND*e*mew_e;     //conductivity(ohm-1 m-1)
sigma3=ND*e*mew_h;     //conductivity(ohm-1 m-1)

//Result
printf('intrinsic conductivity is %0.3f *10**-3 ohm-1 m-1 %0.3f \n',(sigma1*10**3),sigma2)
printf('conductivity during donor impurity is %0.3f ohm-1 m-1 \n',sigma2)
printf('conductivity during acceptor impurity is %0.3f ohm-1 m-1',int(sigma3))