clc;clear;
//Example 7.8

//given data
P1=5;
V1=0.280;
T1=115;
P2=1;
dt=8760;//time in h/yr
UC=0.075;//unit cost in dollar

//from Table
//at P1 and T1
h1=232.3;
s1=4.9945;
p1=422.15;
s2=s1;
//at P2 and s2
h2=222.8;

//calculations
m=p1*V1;
//Ein - Eout = dEsystem/dt
//Ein = Eout
//Wout = m*(h1-h2)
Wout = m*(h1-h2);
disp(round(Wout),'maximum amount of power that can be produced in kW')
APP=Wout*dt;//annual power production
APS=APP*UC;//annual power savings
disp(APS,'Annual power savings in $/year') 
