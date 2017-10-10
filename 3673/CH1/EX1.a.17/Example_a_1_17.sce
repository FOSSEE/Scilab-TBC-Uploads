//Example 1_17 page no:34
clc;
Va=1;//here Va is assumed to be one hence it will canceled out in calculation
R=1;//here R is assumed to be one it will be assigned correct value on the flow of calculation
V10=Va*(10/15);
Vr=Va*R/(20+R);
R=(10/15)*(20*3);//here 3 is included to show that R is canceled in calculation
//hence 3R-2R=R for simplicity we introduced 3 in calculation
disp(R,"the resistance R in the circuit is(in ohm)");
