//Example 2_8 page no:92
clc;
R6=6;
delta=[1.83,-1,-0.5,
        -1,-1.167,-0.167,
        -0.5,-0.167,0.867];
delta2=[1.83,6.67,-0.5,
        -1,5,-0.167,
        -0.5,0,0.867];
delta3=[1.83,-1,6.67,
        -1,-1.167,5,
        -0.5,-0.167,0];
V2=det(delta2)/det(delta);
V3=det(delta3)/det(delta);
I6=(V2-V3)/6;
P=I6^2*R6;
disp(P,"the power absorbed or dissipated is (in W))");
