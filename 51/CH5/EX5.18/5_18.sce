clc;
clear;
Q=1000;//ml/sec
A=30;//mm^2
r=200;//mm
n=500;//rev/min
//v2 is tangential; v2=vang2
m=(Q/1000000)*999;//kg/sec
//m=2*d*(A)*v2=d*Q
v2=(Q)/(2*A);//m/sec
//Torque reuired to hold sprinkler stationary
Tshaft=(-(r/1000)*(v2)*m);//Nm
//u2=speed of nozzle=r*omega
//v21=v2-u2
omega=n*(2*%pi)/60;//rad/sec
v21=v2-(r*omega/1000);
//resisting torque when sprinker is rotating at a constant speed of n rev/min
Tshaft1=(-(r/1000)*(v21)*m);//Nm
//when no resistintg torque is applied
//Tshaft=0
omega1=v2/(r/1000);
n1=(omega1)*60/(2*%pi);//rpm
disp("Nm",Tshaft,"Resisting torque required to hold the sprinker stationary=")
disp("Nm",Tshaft1,"Resisting torque when sprinker is rotating at a constant speed of 500 rev/min=")
disp("rpm",n1,"Speed of sprikler when no resisting torque is applied=")
x=0:800;

for i=0:800
    y(i+1)=(-(r/1000)*(v2-((r/1000)*i*(2*%pi)/60))*m);
end
plot2d(x,y,rect=[0,-4,800,0])
xtitle("Tshaft vs omega","omega,rpm","Tshaft, Nm")