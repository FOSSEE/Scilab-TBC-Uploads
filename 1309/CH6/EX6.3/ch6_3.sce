clc;
clear;
printf("\t\t\tChapter6_example3\n\n\n");
// Determination of the variation of wall temperature with length up to the point where the flow becomes fully developed.
// properties of milk 
kf=0.6; // thermal conductivity in W/(m-K)
cp=3.85*1000; // specific heat in J/(kg*K)
rou=1030; // density in kg/m^3
mu=2.12e3; // viscosity in N s/m^2
// specifications of 1/2 standard type K tubing from appendix table F2
OD=1.588/100; // outer diameter in m
ID=1.340/100; // inner diameter in m
A=1.410e-4 // cross sectional area in m^2
rou=1030;
V=0.1;
mu=2.12e-3
// determination of flow regime
Re=rou*V*ID/(mu);
printf("\nThe Reynolds Number is %d",Re);
// The flow being laminar, the hydrodynamic entry length is calculated as follows
ze=0.05*ID*Re;
printf("\nThe hydrodynamic entry length is %.1f cm",ze*100);
Tbo=71.7; // final temperature in degree celsius
Tbi=20; // initial temperature in degree celsius
L=6; // heating length in m
qw=rou*V*ID*cp*(Tbo-Tbi)/(4*L);
printf("\nThe heat flux is %d W/sq.m",qw);
q=qw*%pi*ID*L;
printf("\nThe power required is %.1f W",q);
printf("\nA 3000 W heater would suffice");
Pr=(cp*mu)/kf; // Prandtl Number
printf("\nThe Prandtl Number is %.1f",Pr);
zf=0.05*ID*Re*Pr;
printf("\nThe length required for flow to be thermally developed is %.1f m",zf);
// calculations of wall temperature of the tube
reciprocal_Gz=[0.002 0.004 0.01 0.04 0.05];// values of 1/Gz taken
[n m]=size(reciprocal_Gz);
Nu=[12 10 7.5 5.2 4.5]; //Enter the corresponding value of Nusselts Number from figure 6.8
for i=1:m
    z(i)=ID*Re*Pr*reciprocal_Gz(i);
    h(i)=kf*Nu(i)/ID;
    Tbz(i)=20+(8.617*z(i));
    Twz(i)=Tbz(i)+(11447/h(i));
end
printf("\nSummary of Calculations to Find the Wall Temperature of the Tube");
printf("\n\t1/Gz\t\tNu\t\tz (m)\t\th W/(sq.m.K)\t\tTbz (degree celsius)\t\tTwz (degree celsius)");
for i=1:m
printf("\n\t%.3f\t\t%.1f\t\t%.3f\t\t%d\t\t\t%.1f\t\t\t\t%.1f",reciprocal_Gz(i),Nu(i),z(i),h(i),Tbz(i),Twz(i));
end
subplot(211);
plot(z,Tbz,'r--d',z,Twz,'r-');  // our first figure
a1 = gca();
h1=legend(["Tbz";"Twz"]);
subplot(212)
plot(z,h, 'o--');  // our second figure
hl=legend(['h'],2);
title('Variation of temperature and local convection coefficient with axial distance for the constant- wall-flux tube');
a2 = gca();
a2.axes_visible = ["off", "on","on"];
a2.y_location ="right";

a1.axes_bounds=[0 0 1 1];  // modify the first figure to occupy the whole area
a2.axes_bounds=[0 0 1 1]; // modify the second figure to occupy the whole area too

a1.data_bounds=[0,0;6,140];
a2.data_bounds=[0,0;6,700];

a1.x_ticks = tlist(["ticks", "locations", "labels"], (0:6)', ["0";"1";"2";"3";"4";"5";"6"]); 
a1.x_label
a1.y_label
x_label=a1.x_label;
x_label.text=" z,m"
a2.x_label
a2.y_label
y_label=a1.y_label;
y_label.text="T, degree celsius"
y_label=a2.y_label;
y_label.text="h, W/(sq.m.K)"
xgrid(1);
a2.filled = "off"; 
