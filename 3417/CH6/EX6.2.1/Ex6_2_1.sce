//Ex.6.2.1. 
//For air,the value of gas constant
R=0.287 //unit=kj/kg K
//T=15 in degreecalcius
T=15+273;//in kalvin
RT=0.287*10^3*288;
P=1.01325*10^5;//unit=Pa;at 1 atm
Vi=15;//unit=m/s
gc=1;
D=120;//turbine diameter;unit=m
N=40/60;
//Air density
p=(P/RT);
printf("Air density p=%f kg/M^3",p);
//1] Total_power= Ptotal=p*A*Vi^3/2*gc
//power density =Ptotal/A=p*Vi^3/2*gc
power_density=(1/(2*gc))*(p*Vi^3);
//2] Maximum_power_density=Pmax/A=8*p*Vi^3/27*gc
Maximum_power_density=(8/(27*gc))*(p*Vi^3);
printf("\n power density =Ptotal/A= %f W/m^2 \n Maximum power density=Pmax/A= %f W/m^2",power_density,Maximum_power_density);
//3]Assuming n=35%
n=0.35;
//let P/A=x
x=n*(power_density);
printf("\n P/A=%f W/m^2",x);
//4]Total power P= power density * Area
Total_power_P=724*(%pi/4)*(D^2) //Total power P= power density*(%pi/4)*D^2
printf("\n Total_power_P=%f watt=%f*10^-3 kW",Total_power_P,Total_power_P);
//5]Torgue at maximum efficiency
Tmax=(2/(27*gc))*((1.226*D*Vi*Vi*Vi)/N);//Tmax=(2/(27*gc))*((p*D*Vi*Vi*Vi)/N);
printf("\n Torgue at maximum efficiency=%f Newton",Tmax)
//and maximum axial thurst
Fxmax=(3.14/(9*gc))*1.226*D^2*Vi^2;//Fxmax=(%pi/(9*gc))*p*D^2*Vi^2;
printf("\n maximum axial thurst=%f Newton",Fxmax);
