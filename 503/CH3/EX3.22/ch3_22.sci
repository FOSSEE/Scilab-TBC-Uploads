// To calculate voltage and kva rating of 1-ph transformer

clc;

V_p=33;    //primary side voltage(V)
V_s=11;    //secondary side voltage(V)
V_p1=V_p/sqrt(3);    //per ph primary side voltage(V)
V_p2=V_s/sqrt(3);    //per ph secondary side voltage(V)

r=6000;    //kva rating 3-ph
s=r/3;    //per phase
disp('Y/Y conn');
disp(V_p1,'primary side ph voltage(V)');
disp(V_p2,'secondary side ph voltage(V)');
disp(s,'kva rating of transformer');

disp('Y/D conn');
disp(V_p1,'primary side ph voltage(V)');
disp(V_s,'secondary side ph voltage(V)');
disp(s,'kva rating of transformer');

disp('D/Y conn');
disp(V_p,'primary side ph voltage(V)');
disp(V_p2,'secondary side ph voltage(V)');
disp(s,'kva rating of transformer');

disp('D/D conn');
disp(V_p,'primary side ph voltage(V)');
disp(V_s,'secondary side ph voltage(V)');
disp(s,'kva rating of transformer');
