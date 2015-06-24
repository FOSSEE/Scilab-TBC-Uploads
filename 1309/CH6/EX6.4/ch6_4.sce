clc;
clear;
printf("\t\t\tChapter6_example4\n\n\n");
// The average bulk temperature of the Freon-12 is [-4O +(-4)]/2 = -22°F
// properties of Freon-12 at average bulk temperature
kf=0.04; // thermal conductivity in BTU/(hr.ft.°R) 
cp=0.2139; // specific heat in BTU/(lbm-°R)
rou= 1.489*(62.4); // density in lbm/cu.ft
v=0.272e-5; // viscosity in sq.ft/s
a=2.04e-3; // diffusivity in sq.ft/hr
Pr=4.8; // Prandtl Number
// specifications of 3/8 standard type K copper tubing from appendix table F2
OD=0.5/12; // outer diameter in ft
ID=0.03350; // inner diameter in ft
A=0.0008814 // cross sectional area in sq.ft
// Laminar conditions are asssumed
z=5;
Tw=32;
Tbo=-4;
Tbi=-40;
L=5;
i=1;
V_assumed(i)=100; //assumed value for velocity
for i=1:6
    inv_Gz(i)=(z*a)/(V_assumed(i)*ID^2);
    Nu=[4.7 5.8 6.2 6.3 6.4 6.4]; // corresponding Nusselt numbers from fig. 8.8: 
    hL(i)=Nu(i)*kf/ID;
    V(i)=-(2*a*L*hL(i))/((kf*ID/2)*log((Tw-Tbo)/(Tw-Tbi)));
        V_assumed(i+1)=V(i);
end
printf("\nSummary of Results\n");
printf("Assmued V (ft/hr)\t1/Gz\tNu(fig 8.8)\thL BTU/(hr. sq.ft. degree R)\tV (ft/hr)\n");
for j=1:6
printf("\t%d\t\t%.4f\t%.1f\t\t%.2f\t\t\t\t%d\n",V_assumed(j),inv_Gz(j),Nu(j),hL(j),V(j));
end
V_final=V(i-1);
hL_final=hL(i-1);
printf("\nThe final velocity is %d ft/hr = %.4f ft/s",V_final,V_final/3600);
printf("\nThe final convective coefficient is %.2f BTU/(hr. sq.ft. degree R)",hL_final);
// checking the laminar-flow assumption by calculating the Reynolds number
Re=(V_final/3600)*ID/v;
printf("\nThe Reynolds number is %d",Re);
// The flow is laminar
m_Fr=rou*A*V_final/3600;
printf("\nThe mass flow rate of Freon-12 is %.2e lbm/s = %.2f lbm/hr",m_Fr,m_Fr*3600);
As=%pi*ID*L;
q=hL_final*As*[(Tw-Tbo)-(Tw-Tbi)]/(log((Tw-Tbo)/(Tw-Tbi)));
printf("\nThe heat gained by Freon-12 is %.1f BTU/hr",q);
q_check=m_Fr*cp*(Tbo-Tbi);
printf("\nOn checking the heat transferred we find almost equal to the heat gained by Freon-12");
rou_water=1.002*62.4; // density of water in lbm/ft^3 from appendix table C11
m_water=rou_water*L*(2/12)*(3/12);
printf("\nThe mass of water in the prescribed volume is %.1f lbm",m_water);
// to remove 144 BTU/lbm of water, the time required is caalculated as below
t=144*m_water/q;
printf("\nThe required time is %.1f hr",t);
inv_Gz1=[0.001 0.004 0.01 0.015 0.02 0.0271]; // guess values of 1/Gz
Nu_D=[19.3 12.1 8.9 7.7 7.1 6.4]; //corresponding Nusselt number from fig. 6.8
[n m]=size(inv_Gz1);
for j=1:m    
    Z(j)=ID*Re*Pr*(inv_Gz1(j));   
    hz(j)=Nu_D(j)*kf/ID;
    Tbz(j)=32-72*exp(-0.01812*Z(j)*hz(j));
end
printf("\nSummary of Data for Example 6.4 ");
printf("\n\t1/Gz\tNu_D\tz (ft)\thz, BTU/(hr. sq.ft.degree R)\tTbz,degree F\n");
for p=1:m
    printf("\t%.4f\t%.1f\t%.2f\t%.2f\t\t\t\t%.1f\n",inv_Gz1(p),Nu_D(p),Z(p),hz(p),Tbz(p));
end
subplot(211);
plot(Z,Tbz,'r--d',Z,Tw,'r-');  // your first figure
a1 = gca();
hl=legend(['Tbz';'Tw'],4);
subplot(212)
plot(Z,hz, 'o--');  // your second figure
a2 = gca();
hl=legend(['hz'],1);
a2.axes_visible = ["off", "on","on"];
a2.y_location ="right";

a1.axes_bounds=[0 0 1 1];  // modify the first figure to occupy the whole area
a2.axes_bounds=[0 0 1 1]; // modify the second figure to occupy the whole area too
a2.filled = "off"; 
a1.data_bounds=[-2,-40;5,40];
a2.data_bounds=[-2,0;5,30];
x_label1=a1.x_label;
x_label1.text="z, ft";
y_label2=a2.y_label;
y_label2.text="hz, BTU/(hr.sq.ft.degree R)";
y_label=a1.y_label;
y_label.text="T, degree F";
newticks1=a1.y_ticks;
newticks1(2)=[-40;-30;-20;-10;0;10;20;30;40];
newticks1(3)=['-40';'-30';'-20';'-10';'0';'10';'20';'30';'40'];
a1.y_ticks=newticks1;
newticks2=a2.y_ticks;
newticks2(2)=[0;5;10;20;30];
newticks2(3)=['0';'5';'10';'20';'30'];
a2.y_ticks=newticks2;
newticks=a1.x_ticks;
newticks(2)=[-2;-1;0;1;2;3;4;5];
newticks(3)=['-2';'-1';'0';'1';'2';'3';'4';'5'];
a1.x_ticks=newticks;

title('Graphical summary of the solution to the constant-wall-temperature tube of Example 6.4');
