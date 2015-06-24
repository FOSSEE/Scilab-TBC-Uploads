clc
clear
//DATA GIVEN
//L=1.5D
n=6;                          //no. of cylinders
Vs=1.75;                      //stroke volume in litres
IP=26.3;                      //power developed in kW
Ne=504;                       //engine speed in R.P.M.
Pmi=6;                        //mean effective pressure in bar
k=0.5;                        //for 4-stroke cylinder

//INDICTED POWER ,I.P.=(n*PMI*l*A*N*k*10)/6 kW
//L*A=Vs
Na=IP*6/(n*Pmi*(Vs/10^3)*k*10);      //actual speed in R.P.M
Fa=Na*n*k;                           //actual no. of fires in one minute
Fe=Ne*n/2;                           //expected no. of fires in one minute
Fm=Fe-Fa;                            //misfires per minute
Fmavg=Fm/n;                          //avg. no. of times each cylinder misfires in one minute

printf('The Average no. of times each cylinder misfires in one minute is: %1.0f.\n',Fmavg);
