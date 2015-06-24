//Finding of Discharge
//Given
d1=30;
d2=15;
hom=30;
cod=0.98;
g=9.81;
pi=3.14;
//To Find 
a1=(pi/4)*d1^2;
a2=(pi/4)*d2^2;
h=hom*(12.6);
q=(cod*a1*a2*(2*100*g*h)^(1/2))/((a1^2-a2^2)^(1/2));
q1=q/1000;
disp("Discharge ="+string(q1)+" m^3/sec");
