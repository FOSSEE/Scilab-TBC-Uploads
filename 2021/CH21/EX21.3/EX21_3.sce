//Finding of Efficiency
//Given
W=0.03;
rho=1000;
g=9.81;
w=0.003;
H1=4;
H2=18;
//To Find
W1=rho*g*W;
w1=rho*g*w;
E1=(w1*H2)/(W1*H1)*100;
E2=(w1*(H2-H1))/((W1-w1)*H1)*100;
disp("D Aubuissons Efficiency ="+string(E1)+" percentage");
disp("Rankine Efficiency ="+string(E2)+" percentage");
