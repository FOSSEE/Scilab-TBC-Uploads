clear all; clc;

disp("The single pump performance is given as follows")
Q=[0 70 130 172 186 190 195 200];
H=[1600 1500 1275 920 785 540 435 285];
table=[Q' H'];
disp("  Q(gpm)  H(ft)")
disp(table)

disp("a) Two connected in series")
Q_1=[0 70 130 172 186 190 195 200];
H_1=[3200 3000 2550 1840 1570 1080 870 570];
table1=[Q_1' H_1']
disp("  Q_1(gpm)  H_1(ft)")
disp(table1)

disp("b) Two connected in parallel")
Q_2=[0 140 260 344 372 380 390 400];
H_2=[1600 1500 1275 920 785 540 435 285];
table2=[Q_2' H_2']
disp("  Q2(gpm)  H2(ft)")
disp(table2)

plot(Q,H,'o',Q_1,H_1,'d',Q_2,H_2,'s')
legend("H(ft))","H1(ft)","H2(ft)",-1)
xlabel("Q (gpm)")
ylabel("H(ft)")
set(gca(),"grid",[1 1])
