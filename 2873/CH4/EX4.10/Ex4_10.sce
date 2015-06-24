// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 4 Example 10")
T1=800;//temperature of source in K
T2=280;//temperature of sink in K
disp("efficiency of engine,W/Q1=(800-T)/800")
disp("for refrigerator,COP=Q3/W=280/(T-280)")
disp("it is given that Q1=Q3=Q")
disp("so,from engine,W/Q=(800-T)/800")
disp("from refrigerator,Q/W=280/(T-280)")
disp("from above two(Q/W)may be equated,")
disp("(T-280)/280=(800-T)/800")
T=2*280*800/(800+280)
disp("so temperature(T)in K")
T
disp("efficiency of engine(n)is given as")
disp("n=(800-T)/800")
n=(800-T)/800
disp("COP of refrigerator is given as")
disp("COP=280/(T-280)")
COP=280/(T-280)
