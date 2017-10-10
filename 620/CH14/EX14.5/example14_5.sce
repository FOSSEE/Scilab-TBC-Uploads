disp("Part a");
l=0.1;
vel=20;
b=0.7;
v=b*l*vel;
disp("the maximum voltage (in V) that can be induced is"); disp(v);
disp("Part b");
deg1=60*%pi/180;
deg2=30*%pi/180;
deg3=10*%pi/180;
v1=v*sin(deg1);
v2=v*sin(deg2);
v3=v*sin(deg3);
disp("voltage induced (in V) when moving at an angle of 60° is"); disp(v1);
disp("voltage induced (in V) when moving at an angle of 30° is"); disp(v2);
disp("voltage induced (in V) when moving at an angle of 10° is"); disp(v3);