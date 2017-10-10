// Calculating the resistance of secondary winding
clc;
disp('Example 5.12, Page No. = 5.89')
// Given Data
sp = 2.2;// Current density of primary winding(in Ampere per mm square)
ss = 2.1;// Current density of secondary winding(in Ampere per mm square)
rp = 8;// Resistance of primary inding (in ohm)
R1 = 1/1.1;// Since length of mean turn of primary is 10% than that of the secondary
R2 = 1/10;// Since ratio of transformation is 10:1
// Calculation of the resistance of secondary winding
rs = R2*R2*(ss/sp)*R1*rp;// Resistance of secondary winding (ohm)
disp(rs,'Resistance of secondary winding (ohm)=');
//in book answer is 0.0694 ohm.  The answers vary due to round off error
