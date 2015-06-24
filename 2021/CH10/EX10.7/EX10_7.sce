//Finding of Diameter of circular channel
//Given
q=1;
n=0.02;
sb=1/10000;
//To Find
q=((%pi/8)*(1/n)*(1/sb)^(1/2)*(1/4)^(2/3));
D=(8/%pi)*n*(1/sb)^(-0.5)*(4)^(2/3);
D1=(D)^(3/8);
disp("Diameter of Circular Pipe ="+string(D)+" meter");
