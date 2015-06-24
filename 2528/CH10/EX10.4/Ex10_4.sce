//chapter 10
//Vout 
//page no.  359
//Figure 10.11a
//Given
clc;
clear;
Rf=400000;           //in Ohm
C=20*10^-9;           //in farad
flow=1/(2*%pi*Rf*C);
printf("\n Flow = %.1f Hz",flow);
Ri=15000;           //in Ohm
//integration
function Vin=f(t),Vin=.6,endfunction
exact=-2.5432596188;
I=intg(0,10^-3,f)

Vout=-1*I/Ri/C;
printf("\n Vout(t) = %.1f V",Vout);//Result

//Graph
t=(0:0.001:6);
V=Vout*ones(1:0.001:4);

for i=0.001:0.001:1-.001
    V=[Vout*(1-i) V Vout*(1-i)]
end

V=[V zeros(5.001:0.001:6)]
V=[2 V 0]
clf;
plot(t,V)
xgrid;
xtitle('Integrator output','$t$',"$Voltage$")
