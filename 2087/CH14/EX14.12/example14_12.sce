

//example 14.12
//calculate quantity of bed load moved by the Meyer-Peter equation
clc;funcprot(0);
//given
gamma_w=9.81;         //unit weigth of water
D=3;                  //depth of channel
d=0.3;                //grain size
k=1.5;                //size of roughness of channel bed
S=1/4400;             //bed slope
G=2.65;              //specific gravity
tau_b=gamma_w*D*S;
N1=d^(1/6)/24;
N=k^(1/6)/24;
gamma_s=gamma_w*G;
tau_c=0.047*(gamma_s-gamma_w)*d/1000;
r=(N1/N)^1.5;
q=47450*(tau_b*r-tau_c)^1.5;
q=round(q*100)/100;
mprintf("quantity of bed load moved=%f kN/m/hr.",q);

