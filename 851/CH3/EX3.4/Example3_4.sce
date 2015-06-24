//clear//
//Caption:Matched Filter output for Noise-like signal
//Example3.4: Matched Filter output for noise like input
clear;
close;
clc;
phit =0.1*rand(1,10,'uniform');
hopt = phit;
phi0t = convol(phit,hopt);
phi0t = phi0t/max(phi0t);
subplot(2,1,1)
a =gca();
a.x_location = "origin";
a.y_location = "origin";
a.data_bounds = [0,-1;1,1];
plot2d([1:length(phit)],phit);
xlabel('                                                          t')
ylabel('                                                     phi(t)')
title('Figure 3.16 (a) Noise Like input signal')
subplot(2,1,2)
a =gca();
a.x_location = "origin";
a.y_location = "origin";
a.data_bounds = [0,-1;1,1];
plot2d([1:length(phi0t)],phi0t);
xlabel('                                                          t')
ylabel('                                                    phi0(t)')
title('Figure 3.16 (b) Matched Filter output')
