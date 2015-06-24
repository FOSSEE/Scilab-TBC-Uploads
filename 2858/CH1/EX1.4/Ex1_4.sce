//example 1.4
clc; funcprot(0);
F200=30;
PI=8;
GI=0.01*(F200-15)*(PI-10);
if GI<0 then
    GI=0;
    disp("the soil is A-2-4(0)")
end

