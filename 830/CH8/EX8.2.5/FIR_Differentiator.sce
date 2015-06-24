//Graphical//
//Example 8.2.5
//Linear Phase FIR Differentiator of length M = 60
//Pass Band Edge frequency fp = 0.1 
clear;
clc;
close;
M =60;
tuo = (M/2)-1;
Wc = 0.1;
h =  zeros(1,M);
for n = 1:M 
  if n ~= M/2 
    h(n) =cos((n-1-tuo)*Wc)/(n-1-tuo);
  end  
end
[hm,fr]=frmag(h,1024);
disp('The Filter Coefficients are:')
h
figure
plot(fr,hm/max(hm))
a =gca();
xlabel('Normalized Digital Frequency fr');
ylabel('Magnitude');
title('Frequency Response of FIR Differentiator for M=60')
xgrid(2)
