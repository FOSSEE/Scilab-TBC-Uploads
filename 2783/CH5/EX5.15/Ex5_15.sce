clc
//initialization of new variables
clear
D=1 //m
alpha=0.5 //degrees
n=0.012
//calculations
R=D/2


theta = 1:1:180;
R_h = 0.5*R - (45*R/%pi)*(sin(2*theta*%pi/180))./(theta*180/%pi);
Z = R*(1-cos(theta*%pi/180));
U_av = (1/n)*(R_h^(2/3))*sqrt(tan(alpha));
Q = U_av*%pi*R^2 .*(theta*180/%pi) - (0.5*R^2)*sin(2*theta*%pi/180);

plot(Z/D,(U_av-U_av(1))/max(U_av-U_av(1)),'r>-.');
//ylabel('U/U_max');
plot((Q-Q(1))/max(Q-Q(1)),Z/D,'b<-.');
//ylabel('Q/Q_max');
xlabel('z/d');
legend(['U/U_max";'Q/Q_max';],opt=2);
