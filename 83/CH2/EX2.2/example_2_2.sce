//Chapter 2
//Example 2.2
//page 57
//To find reactance of the conductor
clear;clc;
f=50; //frequency
D=5.04; //diameter of the entire ACSR
d=1.68; //diameter of each conductor
Dsteel=D-2*d; //diameter of steel strand
//As shown in fig
D12=d;
D13=(sqrt(3)*d);
D14=2*d;
D15=D13;
D16=D12;
//neglecting the central sttel conductor,we have the 6 possibilities
D1=(0.7788*d)*D12*D13*D14*D15*D16;
//we have total of 6 conductors,hence
D2=D1;
D3=D1;
D4=D1;
D5=D1;
D6=D1;
Ds=(D1*D2*D3*D4*D5*D6)^(1/(6*6));//GMR;
//since the spacing between lines is 1m=100cm
l=100;
L=0.461*log10(l/Ds); //Inductance of each conductor
Ll=2*L; // loop inductance
Xl=2*%pi*f*Ll*10^(-3);//reactance of the line
printf("\n\nInductance of each conductor=%0.4f mH/km\n\n",L);
printf("Loop Inductance=%0.4f mH/km\n\n",Ll);
printf("Loop Reactance=%f ohms/km\n\n",Xl);



