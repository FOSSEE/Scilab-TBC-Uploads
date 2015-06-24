//To Determine the Voltage Rating of the respective windings of the transformer
//Page 156
clc;
clear;

//'o' and 't' represent transformer one and two respectively

//Objective is to find the Factor which has to be multiplied to get VA rating
Vll=1; //Assumption Made
//From the Phasor Diagram from the result file
Vab=Vll*exp(%i*0); //Vab is taken as reference
Vabh=50*Vab/100;
Vx1x2o=1*sqrt((Vab^2)-(Vabh^2))/3;
Vx2x3o=2*sqrt((Vab^2)-(Vabh^2))/3;
Vx1x2t=Vabh;
Vx2x3t=Vabh;

//Let I be unity
I=1;

//VA Ratings of the respective windings
Sx1x2o=Vx1x2o*I;
Sx2x3o=Vx2x3o*I;
Sx1x2t=Vx1x2t*I;
Sx2x3t=Vx2x3t*I;

//Total VA rating of transformer
S1=Sx1x2o+Sx2x3o;
S2=Sx1x2t+Sx2x3t;

//Ratio of total rating to maximum rating
Rt=(S1+S2)/(sqrt(3)*Vll*I);

printf('\na) The voltampere raing of x1x2 of transformer 1 is %g*VI VA\n',Sx1x2o)
printf('b) The voltampere raing of x1x2 of transformer 1 is %g*VI VA\n',Sx2x3o)
printf('c) The Total Output from transformer 1 is %g*VI VA\n',S1)
printf('d) The voltampere raing of x1x2 of transformer 2 is %g*VI VA\n',Sx1x2t)
printf('e) The voltampere raing of x1x2 of transformer 2 is %g*VI VA\n',Sx2x3t)
printf('f) The Total Output from transformer 2 is %g*VI VA\n',S2)
printf('g) The Total Rating to the Maximum Continous Output is %g\n',Rt)
