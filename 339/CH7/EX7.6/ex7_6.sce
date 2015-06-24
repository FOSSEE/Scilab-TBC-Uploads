Icq=6*10^-3;
Ibq=40*10^-6;
Van=30; //Early voltage
q=1.6*10^-19;
k=1.38*10^-23;
T=300;
fT=37*10^9; //Transition frequency
gm=(Icq*q)/(k*T);
beta0=Icq/Ibq;
r0=Van/Icq;
rpi=beta0/gm;
Cpi=(beta0)/(2*%pi*fT*rpi);
disp("Hybrid pi parametrs without Miller effect");
disp("Mho",gm,"gm");
disp("Ohms",rpi,"Rpi");
disp("Farads",Cpi,"Cpi");
disp("Ohms",r0,"R0");
disp(beta0,"Beta0");