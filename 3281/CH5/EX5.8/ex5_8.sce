//Page Number: 295
//Example 5.8
clc;
//Given
f=5D+9; //hz
v0=10D+3; //V
d=1; //mm
d1=d/1000; //m
v1=100; //V

//(i) Gap transit time
vv0=0.593D+6*sqrt(v0);//m/sec
tau=d1/vv0;//sec
disp('sec',tau,'Gap transit time:');

//Gap transit angle
w=2*%pi*f;
thetag=w*tau;//rad
disp('rad',thetag,'Gap transit angle:');

//(ii) Beam coupling coefficient
betin=sin(thetag/2)/(thetag/2);
disp(betin,'Beam coupling coefficient:');

//(iii) Velocity of electron leaving buncher gap
vig=vv0*(1+((betin*v1)/(2*v0)));//m/sec
disp('m/sec',vig,'Velocity of electron leaving buncher gap:');

//(iv) Depth of modulation
m=betin*v1/v0;
disp(m,'Depth of modulation:');
