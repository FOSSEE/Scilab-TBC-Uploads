//clear//
//Caption:Matched Filter output for RF pulse
//Example3.3: MATCHED FILTER FOR RF PULSE
clear;
close;
clc;
fc =4; //carrier frequency in Hz
T =1;
t1 = 0:0.01:T;
phit = sqrt(2/T)*cos(2*%pi*fc*t1);
hopt = phit;
phiot = convol(phit,hopt);
phiot = phiot/max(phiot);
t2 = 0:0.01:2*T;
subplot(2,1,1)
a =gca();
a.x_location = "origin";
a.y_location = "origin";
a.data_bounds = [0,-1;1,1];
plot2d(t1,phit);
xlabel('                                                          t')
ylabel('                                                     phi(t)')
title('Figure 3.13 (a) RF pulse input')
subplot(2,1,2)
a =gca();
a.x_location = "origin";
a.y_location = "origin";
a.data_bounds = [0,-1;1,1];
plot2d(t2,phiot);
xlabel('                                                          t')
ylabel('                                                    phi0(t)')
title('Figure 3.13 (b) Matched Filter output')
