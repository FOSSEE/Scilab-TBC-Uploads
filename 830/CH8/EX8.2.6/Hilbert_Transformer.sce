//Graphical//
//Example 8.2.6
// Plotting Hibert Transformer of Length M = 31
//Default Window Rectangular Window
//Chebyshev approx default parameter = [0 0]
clear;
clc;
close;
M =31;//Hibert Transformer Length = 31
tuo = (M-1)/2;
Wc = %pi;
h =  zeros(1,M);
for n = 1:M 
   if n ~= ((M-1)/2)+1 
     h(n) =(2/%pi)*(sin((n-1-tuo)*Wc/2)^2)/(n-1-tuo);
   end  
end
disp('The Hilbert Coefficients are:')
h
Rec_Window = ones(1,M);//Rectangular Window generation
h_Rec = h.*Rec_Window;//Windowing With Rectangular window
//Hamming Window geneartion
for n=1:M
  hamm_Window(n) = 0.54-0.46*cos(2*%pi*(n-1)/(M-1));
end
h_hamm = h.*hamm_Window';//Windowing With hamming window;
//Hilbert Transformer using Rectangular window
[hm_Rec,fr]=frmag(h_Rec,1024);
hm_Rec_dB = 20*log10(hm_Rec);
figure
plot(fr,hm_Rec_dB)
a =gca();
xlabel('Normalized Digital Frequency fr');
ylabel('Magnitude');
title('Frequency Response of FIR Hibert Transformer using Rectangular window for M=31')
xgrid(2)
//Hilbert Transformer using Hamming window
[hm_hamm,fr]=frmag(h_hamm,1024);
disp('The Hilbert Coefficients are:')
hm_hamm_dB = 20*log10(hm_hamm);
figure
plot(fr,hm_hamm_dB)
a =gca();
xlabel('Normalized Digital Frequency fr');
ylabel('Magnitude');
title('Frequency Response of FIR Hibert Transformer using hamming window for M=31')
xgrid(2)
