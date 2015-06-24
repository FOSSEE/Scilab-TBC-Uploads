clear;
clc;
function [I_TAV]=theta(th)
    I_m=1;    //supposition
    I_av=(I_m/(2*%pi))*(1+cosd(th));
    I_rms=sqrt((I_m/(2*%pi))*((180-th)*%pi/360+.25*sind(2*th)));
    FF=I_rms/I_av;
    I_rms=35;
    I_TAV=I_rms/FF;
endfunction
disp("when conduction angle=180");
th=0;
I_TAV=theta(th);
printf("avg on current rating=%.3f A",I_TAV);
disp("when conduction angle=90");
th=90;
I_TAV=theta(th);
printf("avg on current rating=%.3f A",I_TAV);
disp("when conduction angle=30");
th=150;
I_TAV=theta(th);
printf("avg on current rating=%.3f A",I_TAV);
