clear;
clc;
tr=5;
V=1100;
R=10;
disp("in case of 3ph-3pulse type");
V_ph=V/tr;
V_mp=sqrt(2)*V_ph;
V_o=3*sqrt(3)*V_mp/(2*%pi);    printf("avg o/p voltage=%.1f V",V_o);
I_mp=V_mp/R;
I_D=(I_mp/%pi)*sin(%pi/3);    printf("\navg value of diode current=%.3f A",I_D);
I_Dr=I_mp*sqrt((1/(2*%pi))*(%pi/3+.5*sin(2*%pi/3)));    printf("\nrms value of diode current=%.2f A",I_Dr);
V_or=V_mp*sqrt((3/(2*%pi))*(%pi/3+.5*sin(2*%pi/3)));
P=(V_or^2)/R;    printf("\npower delivered=%.1f W",P);

disp("in case of 3ph-M6 type");
V_ph=V_ph/2;
V_mp=sqrt(2)*V_ph;
V_o=3*V_mp/(%pi);    printf("avg o/p voltage=%.2f V",V_o);
I_mp=V_mp/R;
I_D=(I_mp/%pi)*sin(%pi/6);    printf("\navg value of diode current=%.4f A",I_D);
I_Dr=I_mp*sqrt((1/(2*%pi))*(%pi/6+.5*sin(2*%pi/6)));    printf("\nrms value of diode current=%.3f A",I_Dr);
V_or=V_mp*sqrt((6/(2*%pi))*(%pi/6+.5*sin(2*%pi/6)));
P=(V_or^2)/R;    printf("\npower delivered=%.0f W",P);

