clear;
clc;
T_j=125;    //degC
T_s=70;    //degC
th_jc=.16;    //degC/W
th_cs=.08;    //degC/W
P_av1=(T_j-T_s)/(th_jc+th_cs);    printf("total avg power loss in thristor sink combination=%.2f W",P_av1);

T_s=60;    //degC
P_av2=(T_j-T_s)/(th_jc+th_cs);    

inc=(sqrt(P_av2)-sqrt(P_av1))*100/sqrt(P_av1);    printf("\npercentage inc in rating=%.2f",inc);