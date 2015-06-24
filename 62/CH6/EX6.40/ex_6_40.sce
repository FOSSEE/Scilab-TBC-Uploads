close;
clc;
clear;
N=7;
n=-4:12;
for i=1:length(n)
    if n(i)>=0 & n(i)<=(N-1)/2 then
        h(i)=n(i);
    elseif n(i)>=(N-1)/2 & n(i)<N
        h(i)=-n(i)+(13+(-1)^N)/2;
    else
        h(i)=0;
        
    end
end
subplot(2,1,1)
plot2d3(n,h)
plot(n,h,'r.')
title("N is odd")
N=8;
n=-4:12;
for i=1:length(n)
    if n(i)>=0 & n(i)<=(N-1)/2 then
        h(i)=n(i);
    elseif n(i)>=(N-1)/2 & n(i)<N
        h(i)=-n(i)+(13+(-1)^N)/2;
    else
        h(i)=0;
        
    end
end
subplot(2,1,2)
plot2d3(n,h)
plot(n,h,'r.')
title("N is even")
disp("given h[n]=h[N-1-n] taking DFTF we get")
disp("H(w)=H*(w) e^(-j*(N-1)*w)");
disp("phase(w)=-1/2(N-1)*w");
//h[n]=-h[N-1-n]
N=7;
n=-4:12;
for i=1:length(n)
    if n(i)>=0 & n(i)<N then
        h(i)=n(i)-(N-1)/2;
    else
        h(i)=0;
        
    end
end
figure
subplot(2,1,1)
plot2d3(n,h)
plot(n,h,'r.')
title("N is odd")
N=8;
n=-4:12;
for i=1:length(n)
    if n(i)>=0 & n(i)<N then
        h(i)=n(i)-(N-1)/2;
      else
        h(i)=0; 
    end
end
subplot(2,1,2)
plot2d3(n,h)
plot(n,h,'r.')
title("N is even")
disp("given h[n]=-h[N-1-n] taking DFTF we get")
disp("H(w)=-H*(w) e^(-j*(N-1)*w)");
disp("phase(w)=%pi/2 - 1/2(N-1)*w")