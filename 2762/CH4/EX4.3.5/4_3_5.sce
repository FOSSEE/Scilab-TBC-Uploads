//Transport Processes and Seperation Process Principles
//Chapter 4
//Example 4.3-5
//Principles of Steady State Heat Transfer
//given data in si units
//nomenclature of unmentioned specifications similar to previous example
k=0.4;
h0=20
rcr=k/h0;//critical radius
mprintf("critical radius= %f mm",rcr*1000)
L=1;
D2=1.5;//diameter in m
r2=D2/(2*1000);//radius in si units
A=2*%pi*r2*L;
t2=400;//wire surface temp
T0=300;//temp of air
q=h0*A*(t2-T0);
mprintf(" heat loss per m of length without insulation %f W",q)
r1i=r2;//with insulation
x=2.5;//thickness of insulation in mm
r2i=r2+(x/1000);
qi=(2*%pi*L*(t2-T0))/(((log(r2i/r1i))/k)+(1/(r2i*h0)))
mprintf(" heat loss per m of length with insulation %f W",qi)
