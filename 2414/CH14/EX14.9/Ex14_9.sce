clc;
close();
clear();
//page no 484
//prob no. 14.9
ZL=complex(50,100);
R0=50;
TauL=(ZL-R0)/(ZL+R0);

mprintf('(a)The reflection coefficient at load is,');
disp(TauL);
[R,theta]=polar(TauL);
mprintf('OR , %.4f angle %i',R,theta*(180/%pi));

S=(1+R)/(1-R);
mprintf('\n (b) The standing wave ratio is, S = %.3f \n',S);
