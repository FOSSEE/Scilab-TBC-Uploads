//Ex:81
clc;
clear;
close;
R=6378;// Radius of earth in km
R_o=42164;//orbital radius in km
x_sl=(105-60)*%pi/180;//Diff b/t satellite longitude & earth station longitude in radians
x_l=30*%pi/180;//earth station latitude in radian
B=cos(x_sl)*cos(x_l);
s=(acos(B))*(180/%pi);
s1=R*sin(s*%pi/180);
s2=R_o-R*B;
E_a=(atan(s2/s1))*(180/%pi)-s;
x_sl1=(105-90)*%pi/180;//Diff b/t satellite longitude & earth station longitude in radians
x_l1=45*%pi/180;//earth station latitude in radian
B1=cos(x_sl1)*cos(x_l1);
so=(acos(B1))*(180/%pi);
s3=R*sin(so*%pi/180);
s4=R_o-R*B1;
E_B=(atan(s4/s3))*(180/%pi)-so;
E_b=floor(E_B);
E_a1=E_a*%pi/180;// Ea in rad
E_b2=E_b*%pi/180;// Eb in rad
L1=(R/R_o)*cos(E_a1);// in rad
M1=(asin(L1))*(180/3.14);// in rad
N1=(E_a+M1)*(%pi/180);
nm1=sin(N1);
d1=(R_o^2)+(R^2)-2*R*R_o*nm1;
d_a=sqrt(d1);
L2=(R/R_o)*cos(E_b2);// in rad
M2=(asin(L2))*(180/%pi);// in rad
N2=(E_b+M2)*(3.14/180);
nm2=sin(N2);
d2=(R_o^2)+(R^2)-2*R*R_o*nm2;
d_a2=sqrt(d2);
r_c=d_a+d_a2;
p_d=r_c/(3*10^5);
p_d1=p_d*1000;
s_tr=500000/10000;// in millisec
T_pd=p_d1+s_tr;// Total propagation delay in millisec
printf("The Total propagation delay=%f millisec", T_pd);