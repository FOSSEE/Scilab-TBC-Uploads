clc//
//
//

//Variable declaration
V=9500;    //volume(m^3)
T=1.5;    //time(s)
x=100;    //absorption(sabines)

//Calculation
sigma_as=0.165*V/T;          //total absorption in the hall(OWU)
T=0.165*V/(sigma_as+x);      //new period of reverberation(s)

//Result
printf("\n total absorption in the hall is %0.3f OWU",sigma_as)
printf("\n new period of reverberation is %0.3f s",T)
