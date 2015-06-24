R = 100; // resistance in ohms
I = 0.3; // current in amps 
P = I^2 * R; // power 
//power specification of the resistors available in the stock 
Pa = 5;
Pb = 7.5;
Pc = 10;

if Pa > P then
    disp("we should select resistor a")
end
if Pb > P then
    disp("we should select resistor b")
end
if Pc > P then
    disp("we should select resistor c")
end