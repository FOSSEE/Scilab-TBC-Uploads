//Finding the switching loss of BJT
//Example 4.2(Page No- 131) 
clc
clear
//given data
Vcc = 250;//V
Vbe_sat = 3;//V
Ib = 8;//A
Vcs_sat = 2;//V
Ics = 100;//A
Iceo = 3*10^-3;//A
td = 0.5*10^-6;//sec
tr = 1*10^-6;//sec
ts = 5*10^-6;//sec
tf = 3*10^-6;//sec
fs = 10*10^3;//Hz
T = 1/fs;//sec
k = 0.5;//duty cycle
tn = k*T-td-tr;//sec
to = (1-k)*T-ts-tf;

//part(a)
//during 0<=t<=td
i_c = Iceo;
v_CE = Vcc 
Pc_t = i_c*v_CE;
printf('(a)\t instantaneous power due to collector current: %0.2f W',Pc_t);
Pd = Iceo*Vcc*td*fs;//average power loss during delay time
printf('\n \t average power loss during delay time: %0.2fmW',Pd*10^3);
tm = (tr*Vcc)/(2*(Vcc-Vcs_sat));//time when power is maximum
Pp = (Vcc^2*Ics)/(4*(Vcc-Vcs_sat));
Pr = (fs*Ics*tr)*((Vcc/2)+((Vcs_sat-Vcc)/3));
Pon = Pd + Pr;
printf('\n \t Total loss during the turn-on is %2.2fW',Pon)

//part(b)
Pc = Vcs_sat*Ics;
Pn = Vcs_sat*Ics*tn*fs;
printf('\n (b)\t Power loss during tn:%dW',Pn)

//part(c)
Pc_tr = Vcs_sat*Ics;
Ps = Vcs_sat*Ics*ts*fs;
Pm = (Vcc*Ics)/4;
printf('\n (c)\t Peak Power: %dW',Pm);

Pf = (Vcc*Ics*tf*fs)/6;
Poff = (Ps + Pf);//power loss during turn off
printf('\n \t The power loss during turn off toff = ts+tf: %dW',Poff);

//part(d)
Po = (Iceo*Vcc*to*fs);
printf('\n (d)\t Power loss during off-time to :%0.3fW',Po)

//part(e)
Pt = (Pon + Pn + Poff + Po);
printf('\n (e)\t Total Power losses: %3.2fW',Pt)

//part(f)
t1 = td;
t2 = td + (tr/2);
t3 = t2 + (tr/2);
t4 = t3 + tn;
t5 = t4 + ts;
t6 = t5 + (tf/2);
t7 = t6 + (tf/2);

t = [0 t1 t2 t3 t4 t5 t6 t7]
Pt = [Pc_t Pc_t Pp Pc_tr Pc_tr Pc_tr Pm Pc_t]

plot(t,Pt);
xlabel('t');
ylabel('P(t)');
title('(f) Plot of instantaneous Power')


