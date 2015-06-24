clear;
clc;
ab=integrate('2*sin(P)','P',%pi/3,%pi/6);
bc=(3^.5 /2)*integrate('p','p',2,5);
Cd=integrate('5*sin(P)','P',%pi/6,%pi/3);
da=.5*integrate('p','p',5,2);
C1=ab+bc+Cd+da;
disp(C1, 'C1=');
C2=integrate('sin(Q)','Q',%pi/6,%pi/3)*integrate('(1+p)','p',2,5);
disp(C2,'C2=');
disp('Since C1=C2 hence stroke theorem is proved');

