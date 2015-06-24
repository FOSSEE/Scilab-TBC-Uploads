//pagenumber 100 example 2
clear
sigma1=0.01;//ohm centimetre inverse
area11=4*10^-3;//metre square
q=0.01*10^-2;//metre
un=1300;
up=500;
ni=1.5*10^15;//per cubic centimetre
sigma1=(un+up)*1.6*10^-19*ni;
iratio=(4*10^-10*0.026*sigma1^2*2.6*2/10^-4)/3.6^2;
disp("reverse current ratio   =   "+string((iratio)));//correction in the book
