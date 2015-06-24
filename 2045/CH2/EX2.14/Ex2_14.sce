//pagenumber 109 example 14
clear
voltag=40;//volt
i1=0.2;//ampere
c1=40*10^-6;//farad
c2=c1;
induct=2;//henry
//(1) ripple
vdc=2*sqrt(2)*voltag/3.14;
r1=vdc/i1;
induc1=r1/1130;
v1=voltag/(3*3.14^3*120^2*4*induct*c1);
disp("ripple voltage   =   "+string((v1))+"volt");
//(2) with two filter
v1=4*voltag/((3*3.14^5)*(16*120^2*induct^2*c1^2));
disp("ripple voltage including filters   =   "+string((v1))+"volt");//correction in the book
//(3)ripple voltage
v1=4*voltag/(5*3.14*1.414*2*3.14*240*240*3.14*induct*c1);
v1=v1/20;
disp("ripple voltage   =   "+string((v1))+"volt");
