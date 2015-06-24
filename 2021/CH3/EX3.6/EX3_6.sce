//Finding of Total Pressure , Depth of pressure
//Given
spgr=0.9;
rho=900;
rho1=1000;
spgr1=0.6;
g=9.81;
y1=spgr*(2/3);
y2=spgr+(spgr1/2);
y3=spgr+((spgr1/3)*2);
//To Find
P1=rho*g*spgr;
P2=P1+(rho1*spgr1*g);
P=(0.5*P1*spgr*1.5)+(((P1+P2)/2)*spgr1*1.5);
disp("P ="+string(P)+" Newton");
P3=P2-P1;
Ycp=((P1*y1)+(P2*y2)+(P3*y3))/P;
disp("Ycp ="+string(Ycp)+" meter");
