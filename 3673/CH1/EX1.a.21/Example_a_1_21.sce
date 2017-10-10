//Example 1_21 page no:36
clc;
R1=3;
R2=2;
V=12/((1/3)+1+(1/2));
i3=V/R1;
i2=-V/R2;
P3=V*i3;
disp(P3,"the power absorbed by P3 is (in W)");
P12=-V*12;
disp(P12,"the power absorbed by 12A current source is (in W)");
P2i=-V*2*i2;
disp(P2i,"the power absorbed by 2i dependent current source is (in W)");
P2=-V*i2;
disp(P2,"the power absorbed by 2 ohm resistor is (in W)");
//the result displayed varies slightly with the text book hence in text book
//V,i3,i2 values are rounded off and they produce approximated result
//here the values are used directly without approxiamtion
