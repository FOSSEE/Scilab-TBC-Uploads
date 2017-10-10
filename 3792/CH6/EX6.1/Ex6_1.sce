// SAMPLE PROBLEM 6/1
clc;funcprot(0);
// Given data
W=3220;// lb
v=44;// m/s (30 mi/hr)
s=200;// ft
mu=0.8;// The effective coefficient of friction between the tires and the road
g=32.2;// The acceleration due to gravity in ft/sec^2
d_G=24;// inch
d_BG=60;// inch
d_GA=60;// inch

// Calculation
abar=v^2/(2*s);// ft/sec^2
theta=atand(1/10);// degree
W_h=W*cosd(theta);// lb
W_v=W*sind(theta);// lb
mabar=(W/g)*abar;// lb
// SigmaF_x = m*abar_x
F=mabar+W_v;// lb
function[X]=reaction(y)
    X(1)=(y(1)+y(2)-W)-0;
    X(2)=((d_GA*y(1))+(F*d_G)-(y(2)*d_BG))-0;
endfunction
y=[1000,1000];
z=fsolve(y,reaction);
N_1=z(1);// lb
N_2=z(2);// lb
FbyN_2=F/N_2;
printf("\nThe friction force under the rear driving wheels,F=%3.0f lb \nThe normal force under each pair of wheels,N_1=%4.0f lb & N_2=%4.0f lb",F,N_1,N_2);
// Alternative solution
// SigmaM_A=m*abar*d
// SigmaM_A=m*abar*d
N_2=((mabar*d_G)+((d_GA*W_h)+(d_G*W_v)))/(d_BG+d_GA);// lb
// SigmaM_B=m*abar*d;
N_1=((W_h*d_BG)-(d_G*W_v)-(mabar*d_G))/(d_BG+d_GA);// lb
printf("\nALTERNATIVE SOLUTION:The normal force under each pair of wheels,N_1=%4.0f lb & N_2=%4.0f lb",N_1,N_2);
