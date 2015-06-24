// Example 10.1: Asymptotic magnitude and phase response curves
clc, clear
w=[0:70];
// Asymptotic magnitude response curve
for i=1:length(w)
    a(i)=32;
    if w(i)<10 then
        b(i)=0;
        c(i)=0;
    elseif w(i)<50
        b(i)=14*(w(i)-10)/40;
        c(i)=0;
    else
        b(i)=20*log10(w(i)/10);
        c(i)=-20*log10(w(i)/50);
    end
end
A=a+b+c;
plot2d(w,A,rect=[0,0,70,50]);
xtitle("Asymptotic magnitude response curve","ω(rad/sec)","20 log |A(jω)| in dB");
// Asymptotic phase response curve
scf(1);
w=[1:600];
for i=1:length(w)
    if w(i)<1 then
        theta1(i)=0;
    elseif w(i)<5
        theta1(i)=31.45*(w(i)-1)/4;
        theta2(i)=0;
    elseif w(i)<100
        theta1(i)=45*log10(w(i)/10);
        theta2(i)=-45*log10(w(i)/50);
    elseif w(i)<500
        theta1(i)=90;
        theta2(i)=-58.55-31.45*(w(i)-100)/400;
    else
        theta1(i)=90;
        theta2(i)=-90;
    end
end
theta=theta1+theta2;
plot(w,theta);
xtitle("Asymptotic phase curve response","ω(rad/sec)","θ(ω)")