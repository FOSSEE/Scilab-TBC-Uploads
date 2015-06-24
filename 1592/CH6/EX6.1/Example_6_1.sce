//Scilab Code for Example 6.1 of Signals and systems by
//P.Ramakrishna Rao
//Sampling of signal
clc;
clear f n X X_delta w;
fs=200;
for f=-200:200
    X(f+201)=5*[delta(f-75)+delta(f+75)];
end
figure(1);
f=-200:200;
plot2d3(f,X,-2);
title('X(f)');
xlabel('--->  f');
w=1;
n=-1;
    for f=-275:275
    X_delta1(f+276)=fs*5*[delta(f-n*fs-75)+delta(f-n*fs+75)];
    end
n=n+1;
    for f=-275:275
    X_delta2(f+276)=fs*5*[delta(f-n*fs-75)+delta(f-n*fs+75)];
end
n=n+1;
    for f=-275:275
    X_delta3(f+276)=fs*5*[delta(f-n*fs-75)+delta(f-n*fs+75)];
end
X_delta=X_delta1+X_delta2+X_delta3;
figure(2);
f=-275:275;
plot2d3(f,X_delta,-2);
title('X_delta(f) at fs=200');
xlabel('--->  f');
