//Finding the type of boundary
//Given
ks=0.20*10^-3;
tau=7.848;
nu=0.01*10^-4;
rho=1000;
//To Find
v=sqrt(tau/rho);
R=(v*ks)/nu;
disp("R ="+string(R)+" no units");
if(R>4);
if(R<60);
disp("Flow is Transitional");    
