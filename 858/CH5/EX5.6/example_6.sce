clc
clear 
printf("example 5.6 page number 174\n\n")

//to find the increase in heat transfer rate

x1=0.1;   //in m
x2= 0.25;  //in m
k_rb=0.93;   //in W/mK
k_ib=0.116    //in W/mK
k_al=203.6    //in W/mK
A=0.1   //in m2

//to find resistance without rivets
R=(1/A)*((x1/k_rb)+(x2/k_ib));
T1=225   //in K
T2=37    //in K
delta_T=T1-T2;
Q=delta_T/R;
printf("heat transfer rate = %f W",Q)

//to find resistance with rivet
d=0.03   //in m
rivet_area= (3.14/4)*d^2;
R_r=(x1+x2)/(k_al*rivet_area);
area_norivet=A-rivet_area;
R_cl=(A/area_norivet)*R;
R_eq=1/(1/R_r+1/R_cl);
Q_new=delta_T/R_eq;

printf("\n\nRate of heat transfer with rivet = %f W",Q_new)
increase=((Q_new-Q)/Q)*100;
printf("\n\npercentage increase in heat transfer rate = %f",increase)
