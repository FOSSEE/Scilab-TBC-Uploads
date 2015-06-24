clc
clear

N=900;
D=0.1;
L=0.14;
Mf=2.1;
CV=42000;
Pm=7.5;
Vc=0.15;
G=1.4;
A=(22/7)*(1/4)*D*D;
IP=(Pm*100*A*L*N*2)/(60*2);
Eith=(IP*3600)/(Mf*CV);
printf('Eith= %3.1f Percent',Eith*100);
printf('\n');

r=(1+0.15)/(0.15);
Ea=1-[1/(r^(G-1))];
Er=Eith/Ea;
printf('Relative Efficiency= %3.2f Percent',Er*100);
printf('\n');
