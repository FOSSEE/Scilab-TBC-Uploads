clc;
H2=5.5;
Q1=217;
Q2=34;
H1=8.5;

H0=(H2*(Q1/Q2)^(2/3)-H1)/((Q1/Q2)^(2/3)-1);
disp("The height of the weir crest above the surface of the river is found to be ")
disp(H0)
disp("m")