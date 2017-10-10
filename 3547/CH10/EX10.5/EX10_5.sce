// Example 10.5
// Calculate the efficiency of the non-degenerate FWM tone at −2Δf if (a) beta2 = −4ps^2/km, (b) beta2 = 0ps^2/km.
// Page no 453

clc;
clear;
close;

//Given data
f=50*10^9;                                     // The bandwidth
alpha= 0.046*10^-3;                            // The fiber loss coefficient
L=40*10^3;                                     // The fiber length

Leff=(1-exp(-(alpha*L)))/alpha;               // Effective fiber length

// (a) Calculate the efficiency of the non-degenerate FWM tone at −2Δf beta2 = −4ps^2/km
bet21=-4*10^(-12);
j=-1;
k=0;
l=1;
n=j+k-l;

bet1=bet21*10^(-12)/10^(3)*(2*%pi*f)^2*n;

//The efficiency of the non-degenerate FWM tone
neta1=(alpha^2+4*exp(-alpha*L*10^3)*(sind(bet1*(L*10^3)/2))/Leff^2)/(alpha^2+bet1^2);

//Displaying results in the command window            
printf("\n The efficiency of the non-degenerate FWM tone at −2Δf (beta2 = −4ps^2/km) = %0.1f X 10^(-3) ",neta1*10^3);

// (b) Calculate the efficiency of the non-degenerate FWM tone at −2Δf beta2 = 0ps^2/km
bet22=0*10^(-12);
j=-1;
k=0;
l=1;
n=j+k-l;

bet2=bet22*10^(-12)/10^(3)*(2*%pi*f)^2*n;

//The efficiency of the non-degenerate FWM tone
neta2=(alpha^2+4*exp(-alpha*L*10^3)*(sind(bet2*(L*10^3)/2))/Leff^2)/(alpha^2+bet2^2);

//Displaying results in the command window            
printf("\n\n The efficiency of the non-degenerate FWM tone at −2Δf (beta2 = 0ps^2/km) = %0.0f ",neta2);
