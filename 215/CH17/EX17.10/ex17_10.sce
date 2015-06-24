clc
//Example 17.10
//From figure 17.32
disp('Consider Network A')
//Writing the mesh equations 
disp('V1=12*I1+10*I2')
disp('V2=10*I1+14*I2')
//Arranging in the standard form 
//V1=t11*V2-t12*I2
//I1=t21*V2-t22*I2
//Therefore t parameters of Network A is
t11A=1.2;t12A=6.8;t21A=0.1;t22A=1.4;
disp('Consider Network B')
//Writing the mesh equations 
disp('V1=24*I1+20*I2')
disp('V2=20*I1+28*I2')
//Arranging in the standard form 
//V1=t11*V2-t12*I2
//I1=t21*V2-t22*I2
//Therefore t parameters of Network B is
t11B=1.2;t12B=13.6;t21B=0.05;t22B=1.4;
tA=[1.2 6.8;0.1 1.4]
tB=[1.2 13.6;0.05 1.4]
disp('t parameters of cascaded network is t=tA*tB')
t=tA*tB
disp(t)