//Page Number: 12
//Example 1.2
clc;
//Given
z0=50;//ohm
zg=50;//ohm
l=0.25;//m
f=4D+9;//hz
zl=100;//ohm
vg=10;//V
w=2*%pi*f;//rad/sec
c=3D+8; //m/s

//(i) Voltage and current at any point
tg=(zg-z0)/(zg+z0);
tl=(zl-z0)/(zl+z0);
vi=z0*vg/(z0+zg);//V
disp('V',vi,'Voltage at any point:');
ii=vg/(2*z0);//A
disp('A',ii,'Current at any point:');

//(ii) Voltage at generator end
//Taking z=1
z=1;
bet=w/c;
vz=(vg/2)*exp(-%i*bet*(z+l))*(1+(tl*exp(2*%i*bet*z)));//V
disp('V',vz,'Voltage at generator end:');
iz=ii*exp(-%i*bet*(z+l))*(1-(tl*exp(2*%i*bet*z)));//A
vz1=(vg/2)*exp(-%i*bet*(z+l))*(1+(tl*exp(2*%i*bet*z)));//V

//Voltage at load end, z=0
z11=0;
vl=(vg/2)*exp(-%i*bet*l)*(1+(tl*exp(2*%i*bet*z11)));//V
disp('V',vl,'Voltage at load end:');

//(iii) Reflection coefficient
zx=0.25;
tz=tl*exp(%i*2*bet*zx);
disp(tz,'Reflection coefficient:');

//(iv) VSWR
p=(1+tl)/(1-tl);
disp(p,'VSWR:');

//(v) Average power delivered to the load
vl=20/3;
pl0=vl^2/(2*zl);//W
disp('W',pl0,'Average power delivered to the load:');
