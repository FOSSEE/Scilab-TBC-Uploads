clc;clear;
//Example 17.16

//given data
P01=2*1000;//factor of 1000 to convert MPa to kPa
T1=400;
V1=0;//negligible
nN=0.93;
m=2.5;
P2=300;

//calculations

//part - a
P201=P2/P01;
//critical pressure ratio at this values is 0.546
Pt=0.546*P01;
//at inlet
h1=3248.4;
h01=h1;
s1=7.1292;
//at throat
st=s1;
ht=3076.8;
vt=0.24196;
Vt=sqrt(2*(h01-ht)*1000);//factor of 1000 to convert kJ to J
At=m*vt/Vt;
//at state 2s
s2s=s1;
h2s=2783.6;
//nN = (h01 - h2)/ (h01 - h2s)
h2=h01-nN*(h01-h2s);
//at P2 and h2
v2=0.67723;
s2=7.2019;
V2=sqrt(2*(h01-h2)*1000);//factor of 1000 to convert kJ to J
A2=m*v2/V2;
disp((At*10000),'throat area in cm^2');
disp((A2*10000),'exit area in cm^2');

//part - b
// at st=7.1292
//pressures of 1.115 and 1.065 MPa
//c calculated using tables
c=sqrt((1115-1065)/(1/0.23776 - 1/0.24633)*1000);//factor of 1000 to convert kPa to Pa
Ma=Vt/c;
disp(Ma,'the Mach number at the throat');
// at s2=7.2019
//pressures of 325 and 275 kPa
c=sqrt((325-276)/(1/0.63596 - 1/0.72245)*1000);//factor of 1000 to convert kPa to Pa
Ma=V2/c;
disp(Ma,'the Mach number at the nozzle exit')
