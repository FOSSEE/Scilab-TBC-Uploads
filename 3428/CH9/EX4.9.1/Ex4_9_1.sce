//Section-4,Example-1,Page no.-I.8
//To find the wave number.
clc;
f=628.443
v=1000
c=3*10^8
f_bar=(f*((1+(v/c))/(1-(v/c)))^0.5)
disp(f_bar,'Wave Number')
