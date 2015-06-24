//Finding of Time Taken
//Given
d1=3;
d2=0.4;
H1=4;
H2=2;
g=9.81;
Cd=0.6;
//To Find
A=(%pi/4)*d1^2;
a=(%pi/4)*d2^2;
//To empty from 4-2 meter
c=sqrt(H1)-sqrt(H2);
T=(2*A*c)/(Cd*a*sqrt(2*g));
disp("Time Taken To empty from 4 to 2 meter ="+string(T)+" seconds");
//To empty the tank fully
T1=(2*A*sqrt(H1))/(Cd*a*sqrt(2*g));
disp("Time Taken To empty the tank ="+string(T1)+" seconds");
