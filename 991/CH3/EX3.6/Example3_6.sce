//Example 3.6.
clc
format(5)
d=(5*10^11*1.76*10^11)*(((1*10^-9)^3)/6)
x1=d*10^6
disp("The electric field intensity,")
disp("E = -5t / d*10*-9 = -5t / 10^-9*1*10^-2 = 5*10^11*t (for 0 < t < t1)")
disp("  = 0     (for t1 < t < infinity)")
disp("(i) The position of the electron after 1ns,")
disp(x1,"     d(um) = (5*10^11)*(1.76*10^11)*((1*10^-9)^3/6) =")
format(6)
x2=0.8-(d*10^2)
disp(x2,"(ii) The rest of the distance to be covered by the electron = 0.8cm - 14.7 um =")
disp("Since, the potential difference drops to zero volt, after 1ns, the electron will travel the distance of 0.799 cm with a constant velocity of")
vx=(5*10^11*1.76*10^11)*(((1*10^-9)^2)/2)
disp(vx,"vx(m/s) = (5*10^11)*(q/m)*(t^2/2) =")
format(9)
x3=(x2/vx)*10^-2
disp(x3,"Therefore, the time t2(seconds) = d / vx =")
x4=(1*10^-9)+x3
disp(x4,"The total time of transit of electron from cathode to anode(in seconds) =")