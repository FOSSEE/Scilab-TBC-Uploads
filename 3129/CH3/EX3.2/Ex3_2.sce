//Finding the Performance Parameters of a Battery Charcher
//Example 3.2 (Page No- 75) 
clc
clear
//given data
pi = 3.141592
Idc = 5;//A
E = 12; // V
Vp = 120;//V
n = 2;// turns ratio of transformer
Vs = Vp/n;//V
Vm = sqrt(2)*Vs;

// part (a)
alpha = asin(E/Vm); // firing angle
alpha_degree = alpha*(180/%pi);// alpha in degrees
betaa = 180 - alpha_degree
delta = betaa - alpha_degree;
printf('The conduction angle : %3.2f degree \n',delta);

//part(b)
R = ((2*Vm*cos(alpha))+(2*E*alpha)-(%pi*E))/(2*%pi*Idc);
printf('Limiting Resistance : %1.2f Ohms \n',R);

//Part(c)
Irms_sq = (((Vm^2/2)+E^2)*(%pi-2*alpha)+(Vm^2/2)*sin(2*alpha)-4*Vm*E)/(2*%pi*R^2);
Irms = sqrt(Irms_sq);//rms battery current
Pr = Irms^2*R;
printf('Power rating of R: %3.3f W \n',Pr);

//part(d)
Pdc = E*Idc; // power delivered to battery
h0 = 100/Pdc; // h0*Pdc = 100
printf('charging time in hours : %1.4f h \n',h0);

//part (e)
eta = Pdc/(Pdc+Pr); // Efficiency
eta_per = eta*100;
printf('Rectifier efficiency : %2.2f%% \n',eta_per)

//part(f)
PIV = Vm + E; //peak inverase voltage
printf('Peak inverse voltage : %2.2f V',PIV)

 
