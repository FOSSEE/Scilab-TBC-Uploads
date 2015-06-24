//Finding of Slope 
//Given
z=1;
y=0.225;
c=50;
q=0.04;
//To Find
A=z*y^2;
P=2*sqrt(2)*y;
x=sqrt(0.225/(2*sqrt(2)));
sb=q/(A*c*x);
sb1=sb^(2);
disp("Slope ="+string(sb1)+" no units");
