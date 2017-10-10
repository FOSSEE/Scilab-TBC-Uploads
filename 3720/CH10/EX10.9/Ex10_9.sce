// Example 10_9
clc;clear;funcprot(0);
//Given data
V=5.0;// Uniform speed in mi/h
x=16;// Length in ft
T=50;// °F
nu=1.407*10^-5;// The kinematic viscosity of water in ft^2/s

// Calculation
Re_x=(V*x)/nu;// The Reynolds number at the stern of the canoe
Re_cr=1*10^5;// Critical Reynolds number
if(Re_x>Re_cr)
    printf('\nThe boundary layer is definitely turbulent by the back of the canoe.');
else
    printf('\nThe boundary layer is definitely laminar');
end
