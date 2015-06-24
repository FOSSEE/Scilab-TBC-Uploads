// calculate the arrangement of slip gauges
clc;
Dd=52.215;
disp(Dd,'desired value=')
Pb=4;
disp(Pb,'Protected block=')
R=Dd-Pb;
disp(R,'Reminder=')
Tp=1.005;
disp(Tp,'thousand  block=')
R=R-Tp;
disp(R,'Reminder=')
Hp=1.010;
disp(Hp,'Hunderths block=')
R=R-Hp;
disp(R,'Reminder=')
Ttp=2.20;
disp(Ttp,'tenths block=')
R=R-Ttp;
disp(R,'Reminder=')
Up=4;
disp(Up,'unit block=')
R=R-Up;
disp(R,'Reminder=')
Tp=40;
disp(Tp,'Tens block=')
R=R-Tp;
disp(R,'Reminder=')





