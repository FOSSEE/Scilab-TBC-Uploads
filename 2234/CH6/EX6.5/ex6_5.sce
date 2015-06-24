clc;
v=10;  //in volt
i=20*10^-3;  //current in Ampere
t=10*10^-9;  //time in sec
s=0.05;  //spacing in inch
l=50;  //length in cm
disp("The radiation using the standard model is 316*10^-6V.");  //displaying result
f=1/((%pi)*t);  //frequency
disp(f,"Frequency in Hz = ");  //displaying result
rad=(316*57*0.6*10)/(3.33*9.9);  //radiation
disp(rad,"radiation level at 10 metre in (V*10^-6 metre) = ");  //displaying result