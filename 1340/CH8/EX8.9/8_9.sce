clear; clc;
xdel(winsid());  //close all windows
s = %s;
G =-(s+3)/(s*(s+1)*(s+2)*(s+4));
evans(G,100);//max gain =100
v = [-5 1 -4 4];//fitting the axes
zeta = 0.8;
mtlb_axis(v)
//sgrid([zeta],[0],20);//displays the zeta = 0.8 line
curve_handles=datatipGetEntities()//gets the entities required
curve_handles.visible='off';
curve_handles.visible='on';