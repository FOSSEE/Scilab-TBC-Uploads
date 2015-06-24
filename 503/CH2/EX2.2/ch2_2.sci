//Calculation of current reqd to produce flux in the given magnetic circuit.

clc;
U_o=4*%pi*10^-7;
U_r=4000;
N=600;
//l_c=.30;
//l_g=.001;
dia=.02;
phi=.5*10^-3;        //flux
A=(%pi/4)*dia^2;
function [i]=current(l_c,l_g)
    R=((l_c/U_r)+l_g)/(U_o*A);
    i=(phi*R)/N;
endfunction
disp(current(.30,0),'no air gap current(A)');
disp(current(.30,.001),'with air gap current(A)');

//B-H data
//H in AT/m    2500    3000    3500    4000
//B in T       1.55    1.59    1.6    1.615

B_g=phi/A;
disp(B_g,'B(T)');

H_g=B_g/U_o;

function [AT]=AT(H,l)
    AT=H*l;
endfunction
AT_g=AT(H_g,.001);
disp(ceil(AT_g),'AT_g');

H_c=3000;
AT_c=AT(H_c,.30);
disp(AT_c,'AT_c');

i=(AT_g+AT_c)/N;
disp(i,'from magnetisation data, current(A)');



