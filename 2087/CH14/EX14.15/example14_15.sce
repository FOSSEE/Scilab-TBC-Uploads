

//example 14.15
//design an irrigation channel by Meyer peter equation
clc;funcprot(0);
//given
Q=45;              //discharge
c=55;              //bed load concentraion
d=0.3;             //average grain diameter
gamma_w=9.81;      //unit weigth of water
G=2.67;
f=0.964;

c=c*Q*gamma_w*3600/1000000;
P=4.75*Q^0.5;
//taking channel width as B=28 m(slightly less than P)
B=28;
qs=c/B;
//assuming effective grain diameter k=0.4 mm
ks=0.4D-3;
N1=ks^(1/6)/24;
sf=1.76*d^0.5;
N=0.0225*sf^0.25;
r=N1/N;
tau_c=0.047*gamma_w*(G-1)*d/1000;
tau_b=r^1.5*((qs/47450)^(2/3)+tau_c);
//from Manning's formula we get on simplification
R=(0.000992*1000/0.525)^(3/7);
S=0.525/(1000*R);
//solving equation of R for trapezoidal section of side slope 1/2 we get
y=poly([-36.792,25.06,0.5],'x','c');
D=roots(y);
//we get D= -51.547499  and 1.4274989  
//taking
D=1.4274989;
D=round(D*100)/100;
mprintf("Width of channel section=%i m.",B);
mprintf("\nDepth of channel section=%f m.",D);
mprintf("\nBed slope=%f.",S);
