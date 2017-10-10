clc;
// plot for open circuit characteristics is given in fig 4.10
IF=[ 0 11.5 23 36.5 59.5 79 110 160];
EA=[0 40 80 120 160 180 200 220 ];
subplot(221);
plot(IF,EA);
xlabel('field ATs');
ylabel('voltage');
title('magnetising curve');
nf=800; // field winding turns
rd=0.5; // total armature resistance along d-axis
ifl=0.2; // field winding current
d=10; // product of (difference between mmf of compensating winding and armature mmf along d-circuit)and load current 
nf1=nf*ifl; // field winding turns for field current of 200mA
il=nf1/d; // maximum load current
printf('Maximum field current is %d A\n',il);
IL=[0 2 4 6 8 10 12 14 16]; // load currents
ATD=nf1-d*IL; // net d-axis ATs
disp('Net d-axis ATs is');
disp(ATD);
// corresponding to each ATD open circuit EMF is obtained from magnetising curve
EO=[220 213 204.7 194 180.5 161.4 128 70 0 ]; // open circuit EMF
VRD=rd*IL; // d-axis resistance drop
VO=EO-VRD; 
disp('Output voltage(V) is ');
disp(VO);
subplot(222);
plot(IL,VO);
xlabel('load current(A)');
ylabel('Output voltage(v)');
title('Output voltage vs Load current');
