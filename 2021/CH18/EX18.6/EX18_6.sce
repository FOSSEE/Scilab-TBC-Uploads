//Finding of Discharge, Width
//Given
D=1.2;
D1=0.6;
Vf=1.8;
B=.20;
//To Find
Q=(%pi*D*B*Vf);
B1=((D*B)/D1)*100;
disp("Discharge ="+string(Q)+" m^3/sec");
disp("Width ="+string(B1)+" centimeter");
