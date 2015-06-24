clc();
clear;
//To determine the angle between planes of transmission of analyser and polariser
//I=I0*cos^2(teta)
//cos^2(teta)=I/I0
a=0.08;                //a=I/I0;where I=incident unpolarized light & I0=incident polarized light
teta=acosd(sqrt(a))    //angle between planes of transmission of analyser and polariser
printf("The angle between the planes of transmission of analyser & polariser is +(or)- %f",teta);