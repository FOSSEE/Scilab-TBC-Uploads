//Example 1.12// resolution
clc;
clear;
close;
//given data :
a=50; // uniform scale
b=50; // full scale reading in volts
c=1/10;
O=a/b;
R=O*c;
disp(O,"one scale division,O = (v)")
disp(R,"resolution,R = (v)")
