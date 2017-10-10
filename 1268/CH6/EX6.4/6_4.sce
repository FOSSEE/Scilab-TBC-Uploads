clc;
disp("Example 6.4")
r=0.5 // radius in cm
volume=4*%pi*r*r*r/3
mass=0.05 // in g
density=mass/volume
liquiddensity=0.9 // in g/cc
if(density<liquiddensity)
    F=volume*981*(density-liquiddensity)
    disp(F,"The drag force is ")
    disp(" dynes")
end
