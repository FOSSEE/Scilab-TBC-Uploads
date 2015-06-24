

//example 16.12
//calculate average boundary shear stress;
//percentage of earth work is saved in lined section
clc;funcprot(0);
//given
s=1.5;        //side slope
Q=15;         //discharge
S=1/4000;     //bed slope
Nl=0.014;      //manning n for lined channel
Nu=0.028;      //manning n for ulined channel 
fb=0.75;         //free board

//considering the perimeter of trapezoidal section
//taking minimum perimeter for given area
//i.e dP/dD=0
//we get
//A=2.1D^2; R=D/2; and P=4.2D

//for linrd channel
//Q=AR^(2/3)*S^0.5
//substituting above values we get
D=(10.0396)^(3/8);
B=0.6*D;
R=D/2;
tau=9.81*R*S*1000;
tau=round(tau*1000)/1000;
mprintf("for lined canal:");
mprintf("\naverage boundary shear stress=%f N/square m.",tau);
Dc=D+fb;            //total depth of cutting
A1=(B+1.5*Dc)*Dc;

//for unlined channel
//Q=AR^(2/3)*S^0.5
//substituting above values we get
D=3.08;
B=0.6*D;
R=D/2;
tau=9.81*R*S*1000;
tau=round(tau*100)/100;
mprintf("\n\nfor unlined canal:");
mprintf("\naverage boundary shear stress=%f N/square m.",tau);
Dc=D+fb;            //total depth of cutting
A2=(B+1.5*Dc)*Dc;
per=(A2-A1)*100/A2;   
per=round(per*100)/100;
mprintf("\n\npercent saving of earth=%f percent.",per);
