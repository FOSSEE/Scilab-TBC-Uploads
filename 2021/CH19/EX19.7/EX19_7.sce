//Finding of Minimum Speed
//Given
Hm=7.5;
D1=1;
D=0.5;
g=9.81;
//To Find
u=(4/3)*(Hm*2*g);
u1=sqrt(u);
N=(60*u1)/(4*%pi);
disp(" u="+string(u1)+" m/sec");
disp("Minimum Speed ="+string(N)+" rpm");
