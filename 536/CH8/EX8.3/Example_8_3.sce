clc;
clear;
printf("\n Example 8.3\n");

Q=0.1;//Flow rate of air suppplied by compressor
printf("\n Given:\n Flow rate of air suppplied by compressor = %.1f m^3/s",Q);
T=273;//Temperature
printf("\n Temperature = %d K",T);
P=101.3e3;//Pressure
printf("\n Pressure = %.1f kN/m^2",P*1e-3);
P2=380e3;//Air compressed to a pressure
printf("\n Air compressed to a pressure = %d kN/m^2",P2*1e-3);
T2=289;//Suction Temperature
printf("\n Suction Temperature = %d K",T2);
l=0.25;//Length of the stroke
printf("\n Length of the stroke = %.2f m",l);
u=4;//Speed
printf("\n Speed = %d Hz",u);
c=4/100;//Cylinder clearance
printf("\n Cylinder clearance = %.2f",c);
Gamma=1.4;
V=Q*T2/(u*T);//Volume per stroke
printf("\n\n Calculations:\n Volume per stroke = %.4f m^3",V);
R=P2/P;//Compression ratio
printf("\n Compression ratio = %.2f",R);
//The swept volume is given by equation 8.42
Vs=V/(1+c-(c*(R)^(1/Gamma)));
printf("\n The swept volume is = %.4f m^3",Vs);
A=Vs/l;//Cross sectional Area of cylinder
printf("\n Cross sectional Area of cylinder = %.3f m^2",A);
d=(A/%pi*4)^0.5;//Diameter of cylinder
printf("\n Diameter of cylinder = %.2f m",d);
//From equation 8.41, work of compression per cycle
W=P*V*(Gamma/(Gamma-1))*((R)^((Gamma-1)/Gamma)-1);
printf("\n Work of compression per cycle = %.0f J",W);
printf("\n Theoretical power requirements = %.1f kW",W*4/1e3);