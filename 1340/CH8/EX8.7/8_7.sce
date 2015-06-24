clear; clc;
xdel(winsid());  //close all windows
s = %s;
G = syslin('c',(s^2-4*s+20)/((s+2)*(s+4)));
zeroes = roots(numer(G));
disp(zeroes,"zeroes are:");
poles = roots(denom(G));
disp(poles,"poles are:");
evans(G,10);
v = [-6 6 -6 6];
mtlb_axis(v)
sgrid([0.45,0],[0],32);//displays the zeta = 0,0.45 line
curve_handles=datatipGetEntities()//gets the entities required
curve_handles.visible='off';
curve_handles.visible='on';
zeta = 0.45;//damping ratio = 0.45
anglezeta = (%pi-acos(0.45))*180/%pi;
disp(anglezeta,"angle made by the line with zeta = 0.45 to the root locus:");
printf("from root locus plotwe have  for stable system gain K =(0,1.5)");

