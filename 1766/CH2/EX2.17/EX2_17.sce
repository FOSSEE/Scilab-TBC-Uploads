clc;funcprot(0);//Example 2.17
//Initilisation of Variables
d1=0.04;....//inner diameter of hallow sphere in m
d2=0.12;....//outer diameter of hallow sphere  in m
T1=383;....//inner surface temparature of hallow sphere in K
T2=323;....//outer surface temparature of hallow sphere in K
d=0.08;.......//diameter of hallow sphere that where we have to find Q and T in m
K=150;....//thermal conductivity of sphere in W/m*K 
//calculations
r1=d1/2;....//inner radius of hallow sphere in m
r2=d2/2;.....//outer radius of hallow sphere  in m
r=d/2;......//radius of hallow sphere that whwre we have to find Q and T in m
R=(r2-r1)/(4*%pi*K*r1*r2);..//resistance of sphere that where we have to find Q  in degrees celcius/W
Q1=(T1-T2)/R;.....//heat transfer in hallow sphere at d=8 cm in W/m^2
R1=(r-r1)/(4*%pi*K*r1*r);.....//resistance of inner layer  in degrees celcius/W
T=T1-(Q1*R1);......//temaparature of a sphere at d=8 cm in K
disp(Q1,"heat transfer in hallow sphere at d=8 cm in W/m^2:")
disp(T,"temparature of hallow sphere at d=8 cm in K:")
