clc;clear;
//Exmaple 8.4

//given data
I=0.005;//current in A
V=100000;//potential difference in V

//calcualtions
v=(5.98*10^5)*(sqrt(V));
disp(v,'Maximum speed in m/s');
IP=V*I;//incident power in W
P=.999*IP;//power converted into heat in W
H=P/4.18;
disp(H,'The heat produced/second in cal/s');