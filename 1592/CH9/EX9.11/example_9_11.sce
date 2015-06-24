//Scilab Code for Example 9.11 of Signals and systems by
//P.Ramakrishna Rao
//Power Spectral Density 
clear;
clc;
clear f n;
fo=2;
n=1;
RC=1/(2*%pi*10^3);
w=4*%pi*10^3
H=1/(1+%i*w*RC);
disp(H,'H(f)');
X=(abs(H))^2;
for f=-5:5
    Pxx(n)=25*[delta(f-fo)+delta(f+fo)];
    Pyy(n)=X*Pxx(n);
    n=n+1;
end
disp(Pxx,'Pxx=');
disp(Pyy,'Pyy=');
f=-5:5;
plot2d3(f,Pyy,-2);
title('Power Spectral Density');
ylabel('Pyy(f)');
xlabel('f in Hz');
