clear;
clc;
//Example 2.11
printf("Example 2.11");
d1=300  //[mm]
r1=d1/2  // [mm]
r1=r1/1000  //[m]
r2=r1+0.05  //[m]
r3=  r2+0.04  //[m]
x1=0.05  //[m]
x2=0.04  //[m]
k1=0.105  //W/(m.K)
k2=0.07   //W/(m.K)
rm1=  (r2-r1)/log(r2/r1);  // [m]
rm2=(r3-r2)/log(r3/r2);     //[m]
L=1  //let
A1=%pi*rm1*L   //let L=1
R1=x1/(k1*A1);
A2=%pi*rm2*L
R2=x2/(k2*A2)
T1=623  //[K]
T2=323  //[K]
dT=T1-T2  //[K]
//Part a
Q_by_L=  dT/(R1+R2)   //Heat loss
printf("Heat loss is %f W/m",Q_by_L);
//Part b:
P=2*%pi*(r1+x1+x2)  //[m]
Q_by_L_peri=Q_by_L/P  // [W/sq m]

printf("Heat lost per sq meter of outer insulation is %f W/sq m",Q_by_L_peri);
R1=x1/(k1*A1) 
sR=0.871+0.827
dT1=dT*R1/sR
printf("Temperature between two layers of insulation=%f K",(T1-dT1) );

  
