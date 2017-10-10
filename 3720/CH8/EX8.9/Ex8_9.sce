//Example 8_9 
clc;clear;funcprot(0);
//Given values
P_g=2*10^5;// N/m^2
D=0.015;// m

//Properties
rho=998;// kg/m^3
mu=1.002*10^-3;// kg/m.s
nu=1.004*10^-6;// m^2/s
epsilon=1.5*10^-6;//The roughness of copper pipes in m
g=9.81;// m/s^2

//Calculation
//(a)
SigmaK_l=0.9+(2*0.9)+10+12;
h_l=(P_g/(rho*g))-2;// m
// h_l=((f*L/D)+SigmaK_l)*(V^2/(2*g))
// V=(v/A_c)
// Re=(V*D)/nu
// (1/sqrt(f))=-2.0*log*(((e/D)/3.7)+(2.51/(Re*sqrt(f))))
// f = y(1) ; V = y(2); Vdot = y(3); Re= y(4);
function[X] = flowrate(y)
    
    X(1)=(((y(1)*(11/D))+SigmaK_l)*y(2)^2/(2*g))-h_l;
    X(2)=(y(3)*4)/(%pi*D^2)-y(2);
    X(3)=((y(2)*D)/(nu))-y(4);
    X(4)=-2.0*log10(((epsilon)/(3.7*D))+((2.51)/(y(4)*sqrt(y(1)))))-1/sqrt(y(1));
endfunction
y=[0.001 1 0.0001 10000]; //Initial conditions for all four variables
z = fsolve(y,flowrate); // Solver Initilisation
y(3)=z(3)*1000// The flow rate of water through the shower head in L/s
printf('(a)The flow rate of water through the shower head,v=%0.02f L/s\n',y(3));

//(b)
h_l3=P_g/(rho*g);
SigmaK_l3=2+10+0.9+14;
// f1=y(1) ; V1=y(2); V2=y(3); V3=y(4) ;Vdot1=y(5); Vdot2=y(6);Vdot3=y(7);Re1=y(8);Re2=y(9);Re3=y(10); f2=y(11); f3=y(12)
function[X]=flowrate(y)
    X(1)=real(((y(1)*(5*y(2)^2)/(D*2*g)))+(((y(11)*6/D)+24.7)*(y(3)^2)/(2*g))-h_l);
    X(2)=real(((y(1)*(5*y(2)^2)/(D*2*g)))+((((y(12)*1/D))+SigmaK_l)*(y(4)^2/(2*g)))-h_l3);
    X(3)=real(((y(5)*4)/(%pi*D^2))-y(2));
    X(4)=real(((y(6)*4)/(%pi*D^2))-y(3));
    X(5)=real(((y(7)*4)/(%pi*D^2))-y(4));
    X(6)=real((y(2)*(D)/(nu))-y(8));
    X(7)=real((y(3)*(D)/(nu))-y(9));
    X(8)=real((y(4)*(D)/(nu))-y(10));
    X(9)=real((-2.0*log10(((epsilon)/(3.7*D))+((2.51)/(y(8)*sqrt(y(1))))))-1/sqrt(y(1)));
    X(10)=real((-2.0*log10(((epsilon)/(3.7*D))+((2.51)/(y(9)*sqrt(y(11))))))-1/sqrt(y(11)));
    X(11)=real((-2.0*log10(((epsilon)/(3.7*D))+((2.51)/(y(10)*sqrt(y(12))))))-1/sqrt(y(12))); 
    X(12)=real(y(6)+y(7)-y(5));  
endfunction
y=[0.001 1 1 1 0.0001 0.0001 0.0001 10000 10000 10000 0.001 0.001];
z=fsolve(y,flowrate);
printf('(b)reduces the flow rate of cold water through the shower by 21 percent\n')
