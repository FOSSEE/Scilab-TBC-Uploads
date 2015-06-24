//Example 13.5
//Program to calculate the absolute maximum repeater spacing for the 
//following ideal receiver types:
//(a)ASK heterodyne synchronous detection
//(b)PSK homodyne detection

clear;
clc ;
close ;

//Given data
Np=36;               //Average photons per bit - FROM EXAMPLE 13.3
h= 6.626*10^(-34);   //J/K - PLANK's CONSTANT
c=2.998*10^8;        //m/s - VELOCITY OF LIGHT IN VACCUM
Lambda=1.55*10^(-6); //metre - OPERATING WAVELENGTH

//(a)ASK heterodyne synchronous detection
Np=36;               //Average photons per bit - FROM EXAMPLE 13.3
//For 50 Mbit/s Transmission Rate
Bt=50*10^6;          //bit/sec - GIVEN TRANSMISSION RATE
Ps=Np*h*c*Bt/Lambda;
Max_system_margin=4-10*log10(Ps/(1*10^(-3)));
Max_repeater_spacing=Max_system_margin/0.2;
//Displaying the Result in Command Window
printf("\n\n\t (a)ASK : Maximum repeater spacing for %1.0f Mbit/s transmission rate is %1.0f km.",Bt/10^6,Max_repeater_spacing);

//For 1 Gbit/s Transmission Rate
Bt=1*10^9;          //bit/sec - GIVEN TRANSMISSION RATE
Ps=Np*h*c*Bt/Lambda;
Max_system_margin=4-10*log10(Ps/(1*10^(-3)));
Max_repeater_spacing=Max_system_margin/0.2;
//Displaying the Result in Command Window
printf("\n\n\t          Maximum repeater spacing for %1.0f Gbit/s transmission rate is %1.0f km.",Bt/10^9,Max_repeater_spacing);

//(b)PSK homodyne detection
Np=9;               //Average photons per bit - FROM EXAMPLE 13.3
//For 50 Mbit/s Transmission Rate
Bt=50*10^6;          //bit/sec - GIVEN TRANSMISSION RATE
Ps=Np*h*c*Bt/Lambda;
Max_system_margin=4-10*log10(Ps/(1*10^(-3)));
Max_repeater_spacing=Max_system_margin/0.2;
//Displaying the Result in Command Window
printf("\n\n\t (b)PSK : Maximum repeater spacing for %1.0f Mbit/s transmission rate is %1.0f km.",Bt/10^6,Max_repeater_spacing);

//For 1 Gbit/s Transmission Rate
Bt=1*10^9;          //bit/sec - GIVEN TRANSMISSION RATE
Ps=Np*h*c*Bt/Lambda;
Max_system_margin=4-10*log10(Ps/(1*10^(-3)));
Max_repeater_spacing=Max_system_margin/0.2;
//Displaying the Result in Command Window
printf("\n\n\t          Maximum repeater spacing for %1.0f Gbit/s transmission rate is %1.0f km.",Bt/10^9,Max_repeater_spacing);