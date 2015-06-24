//Example 10.5
//Program to calculate: 
//(a)The frequency chirp variation at the output signal
//(b)The differential gain required

clear;
clc ;
close ;

//Given data
Lambda=1.55*10^(-6);     //metre - OPERATING WAVELENGTH
alpha=-1;                //ENHANCEMENT FACTOR
Pin=0.5*10^(-3);         //Watt - INPUT SIGNAL POWER
dPin_by_dt=0.01*10^(-6); //metre - INPUT SIGNAL POWER VARIATION
dnr_by_dn=-1.2*10^(-26); //m^3 - DIFFERENTIAL REFRATIVE INDEX

//(a)The frequency chirp variation at the output signal
del_f=-alpha/(4*%pi)*1/Pin*dPin_by_dt;

//(b)The differential gain required
dg_by_dn=4*%pi/Lambda*dnr_by_dn/alpha;

//Displaying the Results in Command Window
printf("\n\n\t (a)The frequency chirp variation at the output signal is %0.2f X 10^(-6)Hz.",del_f/10^(-6));
printf("\n\n\t (b)The differential gain required is %0.3f X 10^(-20) m^2.",dg_by_dn/10^(-20));