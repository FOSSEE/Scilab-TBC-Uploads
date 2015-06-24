clc;clear;
//Example 9.9

//given data
m=100;
P1=5;
T1=-40+460;//in R
T4=2000+460;//in R
V1=850;
rp=10;

//constants used
cp=0.240;//in Btu/lbm F
k=1.4;

//calculations
//Process 1-2
T2=T1+V1^2/(2*cp)/25037;//factor of 25037 to covert to Btu/lbm
P2=P1*(T2/T1)^(k/(k-1));
//Process 2-3 
P3=rp*P2;
P4=P3;
T3=T2*(P3/P2)^((k-1)/k);
//Win=Wout
T5=T4-T3+T2;
P5=P4*(T5/T4)^(k/(k-1));
T5=round(T5);
disp(T5,'temperature at turbine exit in R');
disp(P5,'pressure at turbine exit in psia');
//Process 5-6
P6=P1;
T6=T5*(P6/P5)^((k-1)/k);
T6=floor(T6);//round off
V6=sqrt(2*cp*(T5-T6)*25037);//factor of 25037 to covert to (ft/s)^2
disp(round(V6),'the velocity of nozzle exit in ft/s');
Wp=m*(V6-V1)*V1/25037;//factor of 25037 to covert to Btu/lbm
Qin=m*cp*(T4-T3);
nP=Wp/Qin;
disp(nP*100,'propulsive efficiency % is')
