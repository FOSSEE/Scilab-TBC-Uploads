clc//
//
//

//Variable declaration
V=2265;    //volume(m^3)
sigma_as=92.9;    //absorption(m^2)
a=18.6;      //area(m^2)

//Calculation
T=0.165*V/sigma_as;          //reverberation time of hall(s)
T1=0.165*V/2;      
inc=T1-sigma_as;       //increase in absorption(OWU)
n=inc/a;        //number of persons to be seated

//Result
printf("\n reverberation time of hall is %0.3f s",T)
printf("\n number of persons to be seated is %0.3f ",n)
