clc

w_O2=3*32/46*100/23; //For complete combustion of 1 kg of C2H6O, oxygen required

ratio=w_O2;
disp("A:F ratio=")
disp(ratio)

w1=88; //kg
w2=54; //kg

w=w1+w2; //kg
W=46; //kg

w_CO2=w1/W*100;
disp("CO2 produced by fuel")
disp(w_CO2)
disp("%")

w_H2O=w2/W*100;
disp("H2O produced by fuel")
disp(w_H2O)
disp("%")
