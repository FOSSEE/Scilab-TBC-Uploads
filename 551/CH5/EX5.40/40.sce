clc
p1=1*10^5; //Pa
T1=273;  //K
p2=25*10^5; //Pa
T2=750; //K
R=0.29; //kJ/kg.K ; cp=0.85+0.00025*T; cv=0.56+0.00025*T; R=cp-cv;
v2=R*T2/p2;
v1=R*T1/p1;
ds=integrate('(0.56+0.00025*T)/T', 'T', T1, T2) + integrate('R/v', 'v', v1, v2);

disp("ds=")
disp(ds)
disp("kJ/kg K")