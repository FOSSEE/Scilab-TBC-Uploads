clear;
clc;
clear
function [I_TAV]=theta(th)
    n=360/th;
    I=1;    //supposition
    I_av=I/n;
    I_rms=I/sqrt(n);
    FF=I_rms/I_av;
    I_rms=35;
    I_TAV=I_rms/FF;
endfunction
disp("when conduction angle=180");
th=180;
I_TAV=theta(th);
printf("avg on current rating=%.3f A",I_TAV);
disp("when conduction angle=90");
th=90;
I_TAV=theta(th);
printf("avg on current rating=%.1f A",I_TAV);
disp("when conduction angle=30");
th=30;
I_TAV=theta(th);
printf("avg on current rating=%.4f A",I_TAV);
