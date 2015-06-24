clear;
clc;
T_jm=125;
th_jc=.15;    //degC/W
th_cs=0.075;    //degC/W

dT=54;    //dT=T_s-T_a
P_av=120;
th_sa=dT/P_av;
T_a=40;    //ambient temp
P_av=(T_jm-T_a)/(th_sa+th_jc+th_cs);
if((P_av-120)<1)
    disp("selection of heat sink is satisfactory");
end
dT=58;    //dT=T_s-T_a
P_av=120;
th_sa=dT/P_av;
T_a=40;    //ambient temp
P_av=(T_jm-T_a)/(th_sa+th_jc+th_cs);
if((P_av-120)<1)
    disp("selection of heat sink is satisfactory");
end

V_m=sqrt(2)*230;
R=2;
I_TAV=V_m/(R*%pi);
P_av=90;
th_sa=(T_jm-T_a)/P_av-(th_jc+th_cs);
dT=P_av*th_sa;
disp("for heat sink");    printf("T_s-T_a=%.2f degC",dT);    printf("\nP_av=%.0f W",P_av);
P=(V_m/2)^2/R;
eff=P/(P+P_av);    printf("\nckt efficiency=%.3f pu",eff);

a=60;    //delay angle
I_TAV=(V_m/(2*%pi*R))*(1+cosd(a));
printf("\nI_TAV=%.2f A",I_TAV);
dT=46;
T_s=dT+T_a;
T_c=T_s+P_av*th_cs;    printf("\ncase temp=%.2f degC",T_c);
T_j=T_c+P_av*th_jc;    printf("\njunction temp=%.2f degC",T_j);