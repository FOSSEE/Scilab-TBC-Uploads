clc;
clear;


syms Ec Fc Fm pi t

Wave=Ec*cos(2*pi*Fm*t)*cos(2*pi*Fc*t)+Ec*sin(2*pi*Fm*t)*sin(2*pi*Fc*t);
 disp("when the wave is");
 disp(Wave);

f_upper=Ec*cos(2*pi*(Fc+Fm)*t); 
disp("We get the upper sideband as");
disp(f_upper);


f_lower=Ec*cos(2*pi*(Fc-Fm)*t); 
disp("We get the lower sideband as");
disp(f_lower);





