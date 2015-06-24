//AC Circuits: example 4.14 :(pg 4.11)
v1=0;
v2=40;
v3=60;
v4=80;
v5=100;
t=8;
Vavg=((v1+v2+v3+v4+v5+v4+v3+v2)/t);
Vrms=sqrt((v1^2+v2^2+v3^2+v4^2+v5^2+v4^2+v3^2+v2^2)/t);
disp("Vavg=((0+40+60+80+100+80+60+40)/8)");
printf("\nVavg=%.1f V",Vavg);
disp("Vrms=sqrt((0+(40)^2+(60)^2+(80)^2+(100)^2+(80)^2+(60)^2+(40)^2)/8)");
printf("\nVrms=%.2f V",Vrms);