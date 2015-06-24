//chapter8
//example8.5
//page301
T=10*10^-3;//for proper operation of LED which remain ON for 10msec
C=.22*10^-6//choose
Vcc=15;Vbe=.7;Vcesat=.2;//given
Vled=1.4;Iled=20*10^-3;
//T=1.1RC
R=T/(1.1*C);
disp(R)
Vo=Vcc-2*Vbe-Vcesat;//output of timer
disp(Vo)
Rled=(Vo-Vled)/Iled;
disp(Rled)//this resistance must be in series whit LED
f=1000;D=95;//for an astable timer
C1=.01*10^-6;
R1=%s;R2=%s;
f=1.44/(R1+2*R2)*C;//frequency--------------eq(1)
D=(R1+R2)/(R1+2*R2)//duty cycle-------------eq(2)
R2=.0555*R1;//from eq(2)
//put it in eq(1)
R1=144*10^3/(1+2*.0555);
disp(R1)
R2=.0555*R1;
disp(R2)