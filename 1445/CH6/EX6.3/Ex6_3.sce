//CHAPTER 6- MAGNETIC CIRCUITS
//Example 3

clc;
disp("CHAPTER 6");
disp("EXAMPLE 3");

//VARIABLE INITIALIZATION
lg1=0.025/100;                //length of 1st air-gap in m
a1=(1*1)/10000;               //in m^2
lg2=0.02/100;                 //length of 2nd air-gap in m
a2=(1*1)/10000;               //in m^2
lg3=0.02/100;                 //length of 3rd air-gap in m
a3=(2*1)/10000;               //in m^2
phi=0.75/1000;                //flux in Wb
lc1=0.5;                      //length through outer limb in m
lc2=0.5;                      //length through outer limb in m
lc3=0.2;                      //length through central limb in m
mu0=4*%pi*10^(-7);            //absolute permeability in Henry/m

//SOLUTUION

//solution (a): when mur=infinity i.e., no mmf drops in any member of the core
rg1=lg1/(mu0*a1);             //reluctance of 1st air-gap
rg2=lg2/(mu0*a2);             //reluctance of 2nd air-gap
rg3=lg3/(mu0*a3);             //reluctance of 3rd air-gap
rgeq=(rg1*rg2)/(rg1+rg2);     //parallel combination of resistors
mmf1=phi*(rgeq+rg3);
mmf1=round(mmf1);             //to round off the value
disp(sprintf("(a) MMF of the exciting coil when permeability is infinity is %d AT",mmf1));

//solution (b): when mur=5000 i.e., reluctance of magnetic core must be considered
mur=5000;
rc1=lc1/(mu0*mur*a1);         //reluctance of first path in the core
rc2=lc2/(mu0*mur*a2);         //reluctance of second path in the core
rc3=lc3/(mu0*mur*a3);         //reluctance of third path in the core
r1=rg1+rc1;
r2=rg2+rc2;
r3=rg3+rc3;
req=(r1*r2)/(r1+r2);
totr=req+r3;                  //total resistance           
mmf2=phi*totr;
mmf2=round(mmf2);
disp(sprintf("(b) MMF of the exciting coil when permeability is 5000 is %d AT",mmf2));

//END




