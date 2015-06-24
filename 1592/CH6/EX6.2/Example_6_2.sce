//Scilab Code for Example 6.2 of Signals and systems by
//P.Ramakrishna Rao
//Sampling of signal and aliasing due to low Sampling frequency
clc;
clear f n X X_delta X_delta1 X_delta2 X_delta3 w;
fs=100;
for f=-200:200
    X(f+201)=5*[delta(f-75)+delta(f+75)];
end
figure(1);
f=-200:200;
plot2d3(f,X,-2);
title('X(f)');
xlabel('--->  f');
w=1;
n=-2;
    for f=-175:175
    X_delta1(f+176)=fs*5*[delta(f-n*fs-75)+delta(f-n*fs+75)];
    end
n=n+1;
    for f=-175:175
    X_delta2(f+176)=fs*5*[delta(f-n*fs-75)+delta(f-n*fs+75)];
end
n=n+1;
    for f=-175:175
    X_delta3(f+176)=fs*5*[delta(f-n*fs-75)+delta(f-n*fs+75)];
end
n=n+1;
    for f=-175:175
    X_delta4(f+176)=fs*5*[delta(f-n*fs-75)+delta(f-n*fs+75)];
end
n=n+1;
    for f=-175:175
    X_delta5(f+176)=fs*5*[delta(f-n*fs-75)+delta(f-n*fs+75)];
end
X_delta=X_delta1+X_delta2+X_delta3+X_delta4+X_delta5;
figure(2);
f=-175:175;

plot2d3(f,X_delta,-2);
title('X_delta(f) at fs=100');
xlabel('--->  f');
//The Presence of the 25 HZ component in the spectrum of x_delta(t)
//Due to effect of Aliasing
