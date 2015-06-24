clc
clear

Na=600;
Za=25;
Zb=50;
Zc=20;
Zd=40;
Nad=(Zb/Za)*(Zd/Zc);
Nd=Na/Nad;

printf('Speed of Output Shaft= %2.1f RPM',Nd);
printf('\n');
