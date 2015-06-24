

//example 14.13
//calculate bed load transported by channel by einstein equation
clc;funcprot(0);
//given
gamma_w=9.81;         //unit weigth of water
D=3;                  //depth of channel
d=0.3;                //grain size
k=1.5;                //size of roughness of channel bed
S=1/4400;             //bed slope
G=2.65;              //specific gravity

N1=d^(1/6)/24;
N=k^(1/6)/24;
r=(N1/N)^1.5;
R1=3*r;
si=(G-1)*d/(1000*R1*S);
//hence we get
fi=7;
q=3600*fi*G*gamma_w*(G-1)^0.5*(gamma_w)^0.5*(d/1000)^1.5;
q=round(q*10)/10;
mprintf("quantity of bed load moved=%f kN/m/hr.",q);
