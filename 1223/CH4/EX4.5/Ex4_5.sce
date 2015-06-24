clear;
clc;
//Example 4.5
b=100;
Vbe=0.7;
Rc=2;
Rs=0.5;
Icq=2.16;
V_T=0.026;//(V)
Vceq=4.8
//ac solution
r_pi=b*V_T/Icq;
printf('\nsmall signal resistance=%.2f KOhm\n',r_pi)
g_m=Icq/V_T;
printf('\ntransconductance=%3f mA/V\n',g_m)
//since Va=infinity,ro=Va/Icq is also infinity
Re=0.4;
Rib=r_pi+(1+b)*Re;
printf('\ninput resistance to the base=%.2f KOhm\n',Rib)
//Ri=R1||R2||Rib
Ri=10*Rib/(10+Rib);
printf('\ninput resistance to the amplifier=%.3f KOhm\n',Ri)
Av=-(1/(r_pi+(1+b)*Re))*b*Rc*Ri/(Ri+Rs);
printf('\nsmall signal voltage gain=%.2f \n',Av)
//by approximate expression
Av=-Rc/Re;
printf('\nsmall signal voltage gain=%.3f \n',Av)
