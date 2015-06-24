//Example 6.8
//Determine the
//(a)The RMS value of the power fluctuation
//(b)The RMS noise current at the output of the detector

clear;
clc ;
close ;

//Given data 
B=100*10^6;                      //Hz - BANDWIDTH
S_rinf_by_Pebarsquare=10^(-15);  //per Hz - RIN VALUE
e=1.602*10^(-19);                //Coulumbs - CHARGE OF AN ELECTRON
eeta=0.6;                        //*100 percent - QUANTUM EFFICIENCY
lambda=1.55*10^(-6);             //metre - WAVELENGTH 
h= 6.626*10^(-34);               //J/K - PLANK's CONSTANT
c=2.998*10^8;                    //m/s - VELOCITY OF LIGHT IN VACCUM
Pe_bar=2*10^(-3);                //Watt - INCIDENT POWER

//(a)The RMS value of the power fluctuation
RMS_value=sqrt(S_rinf_by_Pebarsquare*B);

//(b)The RMS noise current at the output of the detector
RMS_noise_current=e*eeta*lambda/(h*c)*RMS_value*Pe_bar;

//Displaying the Results in Command Window
printf("\n\n\t (a)The RMS value of the power fluctuation is %0.2f X 10^(-4) W.",RMS_value/10^(-4));
printf("\n\n\t (b)The RMS noise current at the output of the detector is %0.2f X 10^(-7) A.",RMS_noise_current/10^(-7));