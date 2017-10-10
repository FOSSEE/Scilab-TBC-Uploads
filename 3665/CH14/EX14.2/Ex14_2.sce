clc//
//
//

//Variable declaration
V=12500;     //volume(m^3)
T1=1.5;      //reverberation time(sec)
n=200;    //number of cushioned chairs

//Calculation
sigma_as=0.165*V/T1;    
T2=0.165*V/(sigma_as+n);     //new reverberation time(s)

//Result
printf("\n new reverberation time is %0.2f s",T2)
