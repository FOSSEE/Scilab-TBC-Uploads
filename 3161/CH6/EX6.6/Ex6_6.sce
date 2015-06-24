clc;
//page 381
//problem 6.6

//Given Bandwidth BW = 4 kHz
BW = 4*10^3;

//Given data rate is fb = 6 kbps
fb = 6*10^3;

//The roll off factor alpha is 
alpha = ((2*BW)/fb) - 1;

disp('The roll off factor is '+string(alpha));

///////////////////////////////////////////////////////////////////////////////

//The required data rate supported at alpha = 0.25 is D
alpha = 0.25

//The corresponding expression for D is
D = (2*BW)/(1+alpha);

disp('The supported data rate is '+string(D)+' kbps');

//For full roll-off alpha = 1.0,  
alpha = 1;

fb = 2*BW/(1+alpha);

disp('The data rate is '+string(fb)+' kbps');


