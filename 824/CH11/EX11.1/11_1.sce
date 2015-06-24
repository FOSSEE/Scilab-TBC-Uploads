//clear//
clc
clear
exec("11.1data.sci");
WAZ1=DAB*CT0*(yAb-yAs)/s;
WAZ2=c*DAB*CT0*log((1-yAs)/(1-yAb))/s;
disp(WAZ1)
disp(WAZ2)
