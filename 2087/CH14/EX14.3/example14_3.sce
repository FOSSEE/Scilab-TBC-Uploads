

//example 14.3
//design a channel on Kennedy's theory
clc;funcprot(0);
//given
Q=45;            //discharge
m=1.05;          //critical velocity ratio
N=0.025;         //rugosity coefficient
S=1/5000;        //bed slope

l=S*Q^0.02/(N^2*m^2.02);
//from fig.14.3 we get r=10
//solving the equation by trial and error method we get
r=9.7;
D=(1.818*Q/(m*(r+0.5)))^(1/2.64);
B=r*D;
V=Q/(D^2*(r+0.5));
Vo=0.55*D^0.64*m;
B=round(B);
D=round(D*100)/100;
V=round(V*1000)/1000;
Vo=round(Vo*1000)/1000;
mprintf("Width of channel section=%f m.",B);
mprintf("\nDepth of channel section=%f m.",D);
mprintf("\nVelocity through the channel section=%f m/s.",V);
mprintf("\nVo=%f m/s.\nHence Safe",Vo);
