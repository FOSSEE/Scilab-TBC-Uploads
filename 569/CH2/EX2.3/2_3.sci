// calculating Relative error (expressed as a percentage of f.s.d)
clc;
disp('calculating Relative error (expressed as a percentage of f.s.d)')
Am = 1.46;
At=1.50;
e=Am-At;
disp(e,'Absolute error(V)=');
Sc=-e;
disp(Sc,'Absolute Correction(V)=');
RE=(e/At)*100;
disp(RE,'Relative Error in terms of true value(in percentage)=');
REF=(e/2.5)*100;
disp(REF,'Relative Error in terms of true value(in percentage)=');