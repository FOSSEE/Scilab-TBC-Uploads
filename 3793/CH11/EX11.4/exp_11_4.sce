clear;
clc;
function [deltam]=stabnr (tolr);
    itr=0;
    ndeltam=0;
    deltam=input('Initial estimate of deltam');
    difff=abs(ndeltam-deltam);
    while difff>tolr;
        itr=itr+1;
        fdeltam=2.7202*cos(deltam)+.8*deltam-2.8247;
        dfdeltam=2.7202*sin(deltam);
        ndeltam=deltam+fdeltam/dfdeltam;
        difff=abs(ndeltam-deltam);
        deltam=ndeltam;
        
    end
    deltam=deltam*180/%pi;
    mprintf("Maximum swing of the rotor angle is %.4f degree, since it is less than(pi-delta0) therefore system will remain stable\n",deltam);
endfunction
phi=-acosd(.8);
S=complex(.8,.6);
pu=.8;
V=1;
I=conj(S)/conj(V);
Xtot=.5;
E=V+%i*I*Xtot;
E=abs(E);
delta0=asin(pu*Xtot/(E*V));
mprintf("Deta0=%.4f radian\n",delta0);
tolr=.001;
[deltam]=stabnr (tolr);
deltac=acos(-.0866/(2.7202));
H=6;
M=H/(%pi*50);
pi=.8;
t=sqrt(2*M*(deltac-delta0)/pi);
mprintf("Critical angle is %.4f radian and time is %.4f seconds",deltac,t);

