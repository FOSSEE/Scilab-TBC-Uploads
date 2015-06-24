//Example 3.8
//Program to estimate 
//(a)The delay difference between the slowest and fastest modes at the fiber output
//(b)The rms pulse broadening due to intermodal dispersion on the link
//(c)The maximum bit rate  
//(d)Bandwidth-length product corresponding to (c)

clear;
clc ;
close ;

//Given data
delta=0.01;      //*100 percent - RELATIVE REFRACTIVE INDEX DIFFERENCE
L=6;             //km - LENGTH OF OPTICAL LINK
n1=1.5;          //CORE REFRACTIVE INDEX 
c=2.998*10^8;    //m/s - VELOCITY OF LIGHT IN VACCUM

//(a)The delay difference between the slowest and fastest modes at the fiber output
del_Ts=L*n1*delta/c;

//(b)The rms pulse broadening due to intermodal dispersion on the link
sigma_s=L*n1*delta/(2*sqrt(3)*c);

//(c)The maximum bit rate  
Bt=1/(2*del_Ts);
//Improved maximum bit rate  
Bti=0.2/sigma_s;

//(d)Bandwidth-length product corresponding to (c)
BoptXL=Bti*L;

//Displaying the Results in Command Window
printf("\n\n\t (a)The delay difference between the slowest and fastest modes at the fiber output is %1.0f ns.",del_Ts/10^(-12));
printf("\n\n\t (b)The rms pulse broadening due to intermodal dispersion on the link is %0.1f ns.",sigma_s/10^(-12));
printf("\n\n\t (c)The maximum bit rate is %0.1f Mbit/s and improved bit rate is %0.1f Mbit/s.",Bt/10^(9),Bti/10^(9));
printf("\n\n\t (d)Bandwidth-length product is %0.1f MHz km.",BoptXL/10^(9));