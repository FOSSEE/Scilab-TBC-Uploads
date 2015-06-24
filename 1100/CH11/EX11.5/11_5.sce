clc
//initialisation of variables
P= 100 //psia
P1= 15 //psia
T= 2000 //F
k= 1.4
R= 53.34 //ft lb/lb R
cp= 0.240 //Btu/lb R
//CALCULATIONS
v1= (R*(T+460)/(P*144))*(P/P1)^(1/k)
disp(v1)
T1= (T+460)*(P1*v1/(P*(R*(T+460)/(P*144))))
dh= cp*(T1-T)
dv= v1-(R*(T+460)/(P*144))
disp('case 1')
printf ('change in volume = %.2f', dv)
disp('case 2')
T2=1500 //F
v2=R*(T+460)/(P*144)/0.241
disp(v2)
T2=(T2+460)*(P1*v2/(P*(R*(T2+460)/(P*144))))
deltah=0.276*(T2-460-T)
dv2=v2-(R*(T+460)/(P*144))
printf ('change in volume = %.2f cu ft/lb', dv2)
disp('At T1=2460 R, from table 1, case 3')
h1=634.34
pr1=407.3
pr2=pr1*P1/P
T2=1075 //F
h2=378.44
deltah=h2-h1
v2=53.34*(T2+460)/(P1*144)
disp(v2)
dv3=v2-(R*(T+460)/(P*144))
printf ('change in volume = %.2f cu ft/lb',dv3)
