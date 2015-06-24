// Example 7.2: (a) Region of operation
//              (b) Region of operation  
//              (c) Region of operation
clc, clear
VT=2; // in volts
VGS=3; // in volts
disp(VGS-VT,"VGS - VT (V)");

disp("Part (a)");
disp(0.5,"VDS (V) =");
disp("Since VDS < VGS - VT, therefore transistor is in ohmic region.");

disp("Part (b)");
disp(1,"VDS (V) =");
disp("Since VDS = VGS - VT, therefore transistor is in saturation region.");

disp("Part (c)");
disp(5,"VDS (V) =");
disp("Since VDS > VGS - VT, therefore transistor is in saturation region.");