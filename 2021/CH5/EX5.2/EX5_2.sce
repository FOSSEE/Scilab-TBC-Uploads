//Finding of Discharge and velocity
//Given
d1=0.4;
d2=0.3;
d3=0.2;
pi=3.14;
//To Find
q1=(pi/4)*d1^2*3;
q2=(pi/4)*d2^2*2;
q3=q1-q2;
v3=q3/((pi/4)*d3^2);
disp("Discharge at section- 1="+string(q1)+" m^3/sec");
disp("Discharge at section- 2="+string(q2)+" m^3/sec");
disp("Discharge at section- 3="+string(q3)+" m^3/sec");
disp("velocity at section- 3 ="+string(v3)+" m/sec");
