clc
T=[341 1360 1710 341 1540];
N=[57.6*10^5 81.5*10^5 166.5*10^5 423 947];
for i=1:5
    lambda=69*sqrt(T(i)/N(i));
    disp("mm",lambda,"The debye length is");
end