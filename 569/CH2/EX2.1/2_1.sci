// calculating static error and static correction
clc;
disp('calculating static error and static correction')
Am = 127.50;
At = 127.43;
e=Am-At;
disp(e,'Static error(V)=');
Sc=-e;
disp(Sc,'Static Correction(V)=');