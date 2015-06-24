clc();
clear;
//To determine the percentage of incident unpolarized light
//I=I0(cos^2(teta))
teta=50;                //angle made between two principle planes
I=(cosd(50))^2;         //incident unpolarized light
//percentage of incident unpolarised light is (I/I0)*100 where I0 is incident polarised light .
I=(cosd(50))^2*100      //percentage of incident unpolarized light
printf("The percentage of incident unpolarized light is %f ",I);
