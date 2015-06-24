clc
//initialization of variables
T1=80+460 //R
T2=90+460 //R
P=14.5 //lb/in^2
cp=0.24
//calculations
disp("From steam tables,")
hg2=1096.6
hf3=48.02
Pg2=0.5069
hf2=hf3
Pair=P-Pg2
wg2=0.622*Pg2/Pair
hgv1=1100.9
wwv1=(cp*(T1-T2)+wg2*(hg2-hf3))/(hgv1-hf3)
Pg=0.6982
xi=wwv1*(P-Pg)/(Pg*0.622)
//results
printf("Specific humidity = %.4f lbm/lbm",wwv1)
printf("\n relative humidity = %.2f",xi)
