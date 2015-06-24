

//exapple 5.9 
clc; funcprot(0);
// Initialization of Variable
B2=1.60;//breadth at 2
D2=(1-0.047)*1.27;//depth at 2
g=9.81;
B1=2.95;//breadth at 1
D1=1.27;//depth at 1
Z=0;
//calculation
Q=B2*D2*(2*g*(D1-D2-Z)/(1-(B2*D2/B1/D1)^2))^0.5;
disp(Q,"volumetric flow rate over flat topped weir over rectangular section in non uniform width(m^3/s)");
//next part
B2=12.8;
D1=2.58;
Z=1.25;
Q=1.705*B2*(D1-Z)^1.5;
disp(Q,"volumetric flow rate over flat topped weir over rectangular section in uniform width (m^3/s):")

