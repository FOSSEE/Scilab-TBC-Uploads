clc;
close();
//page no 203
//prob no. 6.12
fc=455;  //in kHz
Tc=(1/fc)*10^3;  //in micro sec
disp('micro s',Tc,'(a)  The carrier period is');
tau=10*Tc;  //in micro sec
disp('micro s',tau,'The time constant is selected 10Tc:');
C=0.01*10^-6;  //in F
R=(tau*10^-6)/C;  //ohm
disp('ohm',R,'R is determined');
W=5;  //in kHz
Tm=1/W*10^3;  //micro sec
disp('micro sec',Tm,'The shortest modulation period Tm=');
