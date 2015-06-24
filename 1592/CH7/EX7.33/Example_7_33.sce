//Scilab Code for Example 7.33 of Signals and systems by
//P.Ramakrishna Rao
//Plotting the magnitude and phase responses
clc;
clear;
T=1;
n=1;
for w=0:0.1:20;
    hmag(n)=2*sin(w*T/2);
    n=n+1;
end
n=1;
for w=0:0.1:20;
    hphase(n)=%pi/2-(w*T/2);
    n=n+1;
end
//Magnitude plot
w=0:0.1:20;
plot(w,hmag);
title('Magnitude Plot');
xlabel('w');
ylabel('|H(e^jw)|');
figure(1);
//Phase Plot
w=0:0.1:20;
plot(w,hphase);
title('Phase Plot');
xlabel('w');
ylabel('theta(wT)');
