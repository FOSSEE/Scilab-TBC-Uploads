//Example 5.5
//Program to estimate the total insertion loss of the fiber joint 
//with a lateral misalignment and angular misalignment

clear;
clc ;
close ;

//Given data
V=2.40;        //NORMALIZED FREQUENCY
n1=1.46;       //CORE REFRACTIVE INDEX
d=8*10^(-6);   //metre - CORE DIAMETER
NA=0.1;        //NUMERICAL APERTURE
y=1*10^(-6);   //metre - LATERAL MISALIGNMENT
theeta=1;      //degree - ANGULAR MISALIGNMENT

//Normalized Spot Size
a=d/2;
omega=a*(0.65+1.62*V^(-3/2)+2.88*V^(-6))/sqrt(2);

//Loss due to lateral offset
Tl=2.17*(y/omega)^2;

//Loss due to angular misalignment
Ta=2.17*((theeta*%pi/180)*omega*n1*V/(a*NA))^2;

//Total insertion loss
Tt=Tl+Ta;

//Displaying the Result in Command Window
printf("\n\n\t Total Insertion Loss is %0.2f dB .",Tt);