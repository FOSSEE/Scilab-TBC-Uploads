// calculate damping factor, time constant, error and time lag
// calculate damping factor, natural frequency, time constant, error and time lag
clc;
Mp1=20/40;
Mp2=10/40;
Mp3=5/40;
Eta=0.225;
disp(Eta,'damping factor')
Td=1.2;
wd=2*%pi/Td;
wn=wd/[(1-Eta^2)^0.5];
tc=1/wn;
disp(tc,'time constant(s)')
ess=2*Eta/wn;
ess5=5*ess;
disp(ess5,'error for 5mm/s ramp(mm)')
Tlag=2*Eta*tc;
disp(Tlag,'time lag(s)')
Eta1=Eta*(0.5)^0.5;
disp(Eta1,'New damping factor')
Td=1.2;
wn1 = wn*(0.5)^0.5;
disp(wn1,'New natural frequency(rad/s)')
tc1=1/wn;
disp(tc1,'New time constant(s)')
ess51=ess5;
disp(ess51,'new error for 5mm/s ramp(mm)')
Tlag1=Tlag;
disp(Tlag1,'new time lag(s)');