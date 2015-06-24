//Example 8.2
//Program to determine:
//(a)Operating Wavelength
//(b)Incident Optical Power

clear;
clc ;
close ;

//Given data
eeta=0.65;                       //*100 percent - QUANTUM EFFICIENCY
e=1.602*10^(-19);                //Coulumbs - CHARGE OF AN ELECTRON
h=6.626*10^(-34);                //J/K - PLANK's CONSTANT
c=2.998*10^8;                    //m/s - VELOCITY OF LIGHT IN VACCUM
Ip=2.5*10^(-6);                  //A - PHOTOCURRENT
E=1.5*10^(-19);                  //J - ENERGY OF PHOTONS

//(a)Operating Wavelength
Lambda=h*c/E;

//Responsivity
R=eeta*e*Lambda/(h*c);

//(b)Incident Optical Power
Po=Ip/R;

//Displaying the Results in Command Window
printf("\n\n\t (a)Operating Wavelength = %0.2f um.",Lambda/10^(-6));
printf("\n\n\t (b)Incident Optical Power = %0.2f uW.",Po/10^(-6));