clc;
close();
//page no 209
//prob no. 6.16
//All power in Watts
global('Pc')
Pc=1000;
funcprot(0)   //to avoid function warnings
function [P]=avg_P(m)           //function for total average power
    P=(1+(m^2/2))*Pc;
endfunction
function [Pp]=peak_P(m)          //function for peak power
    Pp=(1+m)^2*Pc;
endfunction
function [Psb]=SB_P(m)          //function for SB power
    Psb=avg_P(m)-Pc;
endfunction
function display(m)          //function for displaying table
    table=[m*100 avg_P(m) peak_P(m) SB_P(m)];
    disp(table);
endfunction

disp('Summary for the result is displayed in the table ');
disp('Mod^n_%  Avg_Pwr  Peak_Pwr SB_Pwe');
m=0;   //for m=0
display(m);
m=0.5;   //for m=0.5
display(m);
m=1;      //for m=1
display(m);
