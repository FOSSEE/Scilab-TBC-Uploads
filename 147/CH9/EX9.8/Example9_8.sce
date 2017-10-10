//transconductance gm, source drain resistance rds
close();
clear;
clc;
gm = 2*10^(-3);//ms
rds = 30000;//ohm
Rs = 3000;
Rl = 2000;
Rd = Rl;
ri = 5000;
R1 = 200000;
R2 = 800000;
Rg = R1*R2/(R1+R2);
Zin = Rg;
Rep = rds*Rd*Rl/(rds*Rd+Rd*Rl+rds*Rl);
Av = -gm*(Rg/(Rg+ri))*Rep;
Ai = Av*(Rg+ri)/Rl;
mprintf('Zin = %0.0f k ohm\nAv = %0.2f \nAi = %0.1f',Zin/1000,Av,Ai);