clc
clear
//DATA GIVEN
N1=240;                     //speed of the engine shaft in R.P.M.
d1=1.5;                     //diameter of pulley on engine shaft in m
d2=0.75;                    //diameter of pulley on machine shaft in m
t=0.005;                    //thickness of the belt in m

//with no slip
//(N2/N1)=(d1+t)/(d2+t)
N2=(d1+t)/(d2+t)*N1;        //speed of the machine shaft in R.P.M.

//with slip of 2%
S=2;                        //slip in %
//(N2/N1)=(d1+t)/(d2+t)*((100-S)/100)
N2s=(d1+t)/(d2+t)*N1*((100-S)/100);

printf(' (i) The Speed of machine shaft, N2 with no slip is: %4.1f R.P.M. \n',N2);
printf(' (ii) The Speed of machine shaft, N2 with slip of 2 percent is: %4.1f R.P.M. \n',N2s);
