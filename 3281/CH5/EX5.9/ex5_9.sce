//Page Number: 296
//Example 5.9
clc;
//Given
f=10D+9; //hz
v0=15D+3; //V
i0=2.5D-3; //A
d=1; //cm
d1=d/100; //m
vrms=10; //V
bet=1;
p=1D-8; //C/m^3
rf=0.6;
e=1.6D-19;
m=9.1D-31;
ee=8.854D-12;

//(i) DC electron beam phase cobstant
vv0=(0.593D+6*sqrt(v0));
w=2*%pi*f;
bete=w/vv0; //rad/m
disp('rad/m',bete,'DC electron beam phase constant:');

//(ii) Reduced plasma frequency and reduced plasma phase constant
wq=rf*sqrt(e*p/(m*ee));//rad/m
disp('rad/m',wq,'Reduced plasma frequency:');
betq=wq/vv0;//rad/sec
disp('rad/sec',betq,'Reduced plasma phase constant:');

//(iii) Gap transit time
tau=d1/vv0;//sec
vtg=vv0*(1+(bet*vrms*sin(w*tau)/(2*v0)));//m/sec
disp('m/sec',vtg,'Gap transit time:');
