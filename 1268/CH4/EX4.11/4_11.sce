clc;
disp("Example 4.11")
d=0.1 // diameter in m
l=25 // length in m
density=1000 // density in kg/m^3
delP= 14700  // in N/m^2
mew= 0.001 // in kg/ms
ka= d*density*((delP*d)^0.5)/(((2*density*l)^0.5)*mew)
Re= (ka/0.281)^(8/7)
if(Re<50000)
    v1=Re*mew/(d*density)
    disp(v1)
end
if(Re>50000)
    Re=(ka/0.2145)^(10/9)
    v1=Re*mew/(d*density)
    disp(v1)
end
