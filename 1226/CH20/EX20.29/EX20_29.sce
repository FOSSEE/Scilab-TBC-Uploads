clc;funcprot(0);//EXAMPLE 20.29
// Initialisation of Variables
ns=3;........//No of stages
N=200;.......//Compressor rpm
p1=1;.......//Intake pressure in bar
t1=20+273;....//Intake temperature in K
D=0.35;......//Engine bore in m
L=0.4;.......//Engine stroke in m
p2=4;........//Discharge pressure from first stage in bar
p6=16;........//Discharge pressure from second stage in bar
p10=64;........//Discharge pressure from third stage in bar
pd=0.2;........//Loss of pressure between intercoolers in bar
R=0.287;......//Gas constant in kJ/kgK
k=0.04;.......//Clearence volume in 4% of the stroke volume
n1=1.2;.....//Compressor index for first stage
n2=1.25;.....//Compressor index for second stage
n3=1.3;.....//Compressor index for third stage
cp=1.005;......//Specific heat at constant pressure in kJ/kgK
etamech=0.8;.....//Mechanical efficiency
//Calculations
p5=p2-pd;p9=p6-pd;t5=t1;t9=t1;
Vs=(%pi/4)*D*D*L*N*2;............//Swept volume of low pressure cylinder per min in m^3
etav1=(1+k)-(k*((p2/p1)^(1/n1)));.....//Volumetric efficiency in first stage
etav2=(1+k)-(k*((p6/p5)^(1/n2)));.....//Volumetric efficiency in second stage
etav3=(1+k)-(k*((p10/p9)^(1/n3)));.....//Volumetric efficiency in third stage
vain1=Vs*etav1;.................//Volume of air taken in first stage in m^3/min
m=(p1*10^5)*vain1/(R*t1*1000);...........//Mass of air intake in kg/min in first stage
t2=round(t1*((p2/p1)^((n1-1)/n1)));
t6=t5*((p6/p5)^((n2-1)/n2));
t10=t9*((p10/p9)^((n3-1)/n3));
Qr1=m*cp*(t2-t5);........//Heat rejected in intercooler after first stage in kJ/min
Qr2=m*cp*(t6-t9);........//Heat rejected in intercooler after second stage in kJ/min
Qr3=m*cp*(t10-t1);........//Heat rejected in intercooler after third stage in kJ/min
disp(Qr1,"Heat rejected in intercooler after first stage in kJ/min:")
disp(Qr2,"Heat rejected in intercooler after second stage in kJ/min:")
disp(Qr3,"Heat rejected in intercooler after third stage in kJ/min:")
vainip=m*R*t5*1000/(p5*10^5);.........//Volume drawn in intermediate pressure cylinder/min
Vsip=vainip/etav2;.............//Swept volume of intermediate cylinder in m^3/min
Dip=sqrt(Vsip/(2*N*L*(%pi/4)));............//Diameter of the intermediate cylinder in m
disp(Dip*1000,"Diameter of the intermediate cylinder in mm:")
vainhp=m*R*t9*1000/(p9*10^5);.........//Volume drawn in high pressure cylinder/min
Vshp=vainhp/etav3;.............//Swept volume of high pressure cylinder in m^3/min
Dhp=sqrt(Vshp/(2*N*L*(%pi/4)));............//Diameter of the intermediate cylinder in m
disp(Dhp*1000,"Diameter of the intermediate cylinder in mm:")
Ps=[{(n1/(n1-1))*m*R*(t2-t1)}+{(n2/(n2-1))*m*R*(t6-t5)}+{(n3/(n3-1))*m*R*(t10-t9)}]*(1/(60*etamech));...//Shaft power in kW
disp(Ps,"Shaft power in kW:")
cv=cp-R;..........//Specific heat at constant volume in kJ/kgK
ga=cp/cv;...........//Ratio of specific heats
Qt1=cv*((ga-n1)/(ga-1))*(t2-t1)*m;............//Heat transfer during first stage in kJ/min
Qt2=cv*((ga-n2)/(ga-1))*(t6-t1)*m;............//Heat transfer during second stage in kJ/min
Qt3=cv*((ga-n3)/(ga-1))*(t10-t1)*m;............//Heat transfer during third stage in kJ/min
printf("\nHeat transferred during first stage in kJ/min: %f\n",Qt1)
printf("\nHeat transferred during second stage in kJ/min: %f\n",Qt2)
printf("\nHeat transferred during third stage in kJ/min: %f\n",Qt3)
