// calculating static error and static correction
clc;
disp('calculating static error and static correction')
Am = 0.000161;
At = 0.159*10^-3;
e=Am-At;
disp(e,'Static error(m3/s)=');
Sc=-e;
disp(Sc,'Static Correction(m3/s)=');