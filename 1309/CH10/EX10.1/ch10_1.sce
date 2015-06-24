clc;
clear;
printf("\t\t\tChapter10_example1\n\n\n");
// Calculation of the heat-transfer rate and the amount of steam condensed
// properties of engine oil at (328 + 325)/2 = 326.5 degree F = 320°F from appendix table C11
rou_f= 0.909*62.4; // density in lbm/ft^3 
cp=1.037; // specific heat BTU/(lbm-degree Rankine) 
v_f= 0.204e-5; // viscosity in ft^2/s 
kf = 0.393; // thermal conductivity in BTU/(lbm.ft.degree Rankine) 
a = 6.70e-3; // diffusivity in ft^2/hr 
Pr = 1.099; // Prandtl Number 
V_v=4.937; // specific volume in ft^3/lbm from superheated steam tables
rou_v=1/V_v; // vapour density
g=32.2;
hfg=888.8; // from saturated steam tables
Tg=327.81;
Tw=325;
L=2; // length in ft
W=3; // width in ft
z=0.2:0.2:2; // distance from entry of plate in ft
[n m]=size(z);
// film thickness is given as follows
for i=1:m
delta(i)=[(4*kf*v_f*z(i)*(Tg-Tw)/3600)/(rou_f*g*hfg*(1-(rou_v/rou_f)))]^(1/4);
hz(i)=(kf/delta(i));
end
printf("\nGrowth of and Heat-Transfer Coefficient for the Condensate Film of Example 10.1 ");
printf("\nz, ft\tdelta, ft\tdelta, in\thz, BTU/(hr.sq.ft.degree Rankine)");
for i=1:m
printf("\n%.1f\t%.2e\t%.4f\t\t%d\n",z(i),delta(i),12*delta(i),hz(i));
end
hL=(4/3)*hz(m); // at plate end
mf=(hL*L*W*(Tg-Tw))/hfg;
printf("\nThe convective coefficient at the plate end is %d BTU/(hr.sq.ft. degree Rankine)",hL);
printf("\nThe amount of steam condensed is %.1f lbm/hr",mf);
q=mf*hfg;
printf("\nThe heat transfer rate is %.2e BTU/hr",q);
Re=(4*mf/3600)/(W*rou_f*v_f);
printf("\nThe Reynolds Number is %d",Re);
if Re<1800 then
    printf("\nThe film is laminar and above equations apply");
    else printf("\nThe film is not laminar and above assumption is wrong");
end
subplot(211);
plot(delta*12,z,'x-');  // our first figure
a1 = gca();
a1.x_location="top";
a1.axes_reverse=["off","on"];
subplot(212)
plot(hz,z, 'o--');  // our second figure
a2 = gca();
a2.axes_reverse=["off","on"];
a2.x_location="bottom";
a2.axes_visible = ["on", "on","on"];
a2.y_location ="right";
x_label1=a1.x_label;
x_label1.text="delta,in";
x_label2=a2.x_label;
x_label2.text="hz, BTU/(hr.sq.ft.degree R)";
y_label=a1.y_label;
y_label.text="z, ft";
a1.axes_bounds=[0 0 1 1];  // modify the first figure to occupy the whole area
a2.axes_bounds=[0 0 1 1]; // modify the second figure to occupy the whole area too
a2.filled="off";
