clc;
T1=15+273;//K
p2!p1=8;
y1=1.4;
T2s=T1*([p2!p1]^[(y1-1)/y1]);

T2=T1+(T2s-T1)/0.8;

T3=800+273;//K
p3!p4=p2!p1
y2=1.333;
T4s=T3/[(p3!p4)^([y2-1]/y2)];

T4=T3-0.82*(T3-T4s)

cv=1.11;
cp=1.005;
W=[cv*(T3-T4)-cp*(T2-T1)];

heat_supp=cv*(T3-T2);

cycle_eff=W/heat_supp;
disp("cycle efficiency is :")
disp("%",cycle_eff*100);//end of part I

//part II
h1=3248;//kJ/kg
h3=138;//kJ/kg
h4=h3;
h2s=2173;//kJ/kg
W=0.8*(h1-h2s);

steam_heat_supp=h1-h3;
steam_cycle_eff=W/steam_heat_supp;
disp("steam cycle efficiency is:");
disp(steam_cycle_eff*100)
