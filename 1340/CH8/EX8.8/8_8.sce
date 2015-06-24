clear; clc;
xdel(winsid());  //close all windows
s = poly(0,"s");
G = syslin('c',(s+1.5)/(s*(s+1)*(s+10)));
zeroes = roots(numer(G));disp(zeroes,"zeroes are:");
poles = roots(denom(G));disp(poles,"poles are:");
po = 1.52;disp(po,"percentage overshoot:");
zeta = -log(po/100)/sqrt(%pi^2+(log(po/100))^2);//calculation for damping ratio
disp(zeta,"damping ratio :");
evans(G,100);//max gain =100
v = [-12 2 -10 10];//fitting the axes
mtlb_axis(v)
sgrid([zeta],[0],20);//displays the zeta = 0.8 line
curve_handles=datatipGetEntities()//gets the entities required
curve_handles.visible='off';
curve_handles.visible='on';
//aproximate values of gain and position can be found out from the plot by sliding datatip
//here there are 3 points satisfying the criteria for zeta = 0.8 line
printf("for zeta =0.8 line points on the root locus are:");
printf("\n -0.87+ j0.66 and -0.87- j0.66 with gain = 7.36");
printf("\n -1.19+ j0.9  and -1.19- j0.9  with gain = 12.79");
printf("\n  and -4.6+ j3.45 and -4.6- j3.45 with gain = 39.64");
breakin = -2.8;
Kbreakin = 27.91;
breakaway = [-0.62 -4.4];
Kbreakaway = [2.511 28.89];
disp(Kbreakin," gain =",breakin,"break-in point at");
disp(Kbreakaway,"with respective gains = ",breakaway,"break-away points at");
wn1 = 0.66;disp(wn1,"Natural frequency for points -0.87+j0.66 and -0.87-j0.66 = ");
wn2 = 0.9;disp(wn2,"Natural frequency for points -1.19+j0.9 and -1.19-j0.9 = ");
wn3 = 3.45;disp(wn3,"Natural frequency for points -0.87+j0.66 and -0.87-j0.66 = ")





