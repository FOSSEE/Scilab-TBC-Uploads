// Example 10.2: Bode's plots
clc, clear
w=[0:0.1:8];
// Asymptotic magnitude response curve
for i=1:length(w)
    a(i)=40;
    if w(i)<1.3 then
        b(i)=20*w(i);
        c(i)=0;
        d(i)=0;
        e(i)=0;
    elseif w(i)<3
        b(i)=20*w(i);
        c(i)=20*(w(i)-1.3);
        d(i)=0;
        e(i)=0;
    elseif w(i)<6
        b(i)=20*w(i);
        c(i)=20*(w(i)-1.3);
        d(i)=-20*(w(i)-3);
        e(i)=0;
    else
        b(i)=20*w(i);
        c(i)=20*(w(i)-1.3);
        d(i)=-20*(w(i)-3);
        e(i)=-20*(w(i)-6);
    end
end
A=a+b+c+d+e;
plot2d(w,A,rect=[0,0,7,200]);
xtitle("Amplitude (Gain) |A(jω)| in dB","log ω","|A(jω)| dB");
// Asymptotic phase response curve
scf(1);
for i=1:length(w)
    thetab=90;
    if w(i)<0.3 then
        thetac(i)=0;
        thetad(i)=0;
        thetae(i)=0;
    elseif w(i)<2
        thetac(i)=45*(w(i)-0.3);
        thetad(i)=0;
        thetae(i)=0;
    elseif w(i)<2.3
        thetac(i)=45*(w(i)-0.3);
        thetad(i)=-45*(w(i)-2);
        thetae(i)=0;
    elseif w(i)<4
        thetac(i)=90;
        thetad(i)=-45*(w(i)-2);
        thetae(i)=0;
    elseif w(i)<5
        thetac(i)=90;
        thetad(i)=-90;
        thetae(i)=0;
    elseif w(i)<7
        thetac(i)=90;
        thetad(i)=-90;
        thetae(i)=-45*(w(i)-5);
    else
        thetac(i)=90;
        thetad(i)=-90;
        thetae(i)=-90;
    end
end
theta=thetab+thetac+thetad+thetae;
plot(w,theta);
xtitle("Phase Φ(ω) in degrees","log10 ω","Φ(ω)")