//Example 14-1
clc;clear;funcprot(0);
//Given data
//Properties
//For air at 25°C
v=1.562*10^-5;// m^2/s
rho_a=1.184;// kg/m^3
rho_w=998.0;// kg/m^3
P_atm=101.3;// kPa
eps=0.15*10^-3;//Pipe roughness in m
D=0.230; //Inner diameter (ID) of the duct in  m
L=13.4;// m
V_cfm=50:50:700;// Volume flow rate in cfm (ft^3/min)
V=V_cfm*0.3048^3/60;// Volume flow rate in m^3/s
alpha=1.05;
g=9.81;// m/s^2

//Calculation
for i=1:1:length(V_cfm);
    Re=(4*V(i))/(v*%pi*D);//Reynolds number
    V_1=(4*V(i))/(%pi*D^2);//Velocity as a function of volume flow rate in m/s
    function [X]=fric(f)
    X=-2.0*log10(((eps)/(3.7*D))+((2.51)/(Re*sqrt(f))))-1/sqrt(f); //Friction factor as a implicit function of Re using Colebrook equation
    endfunction
    f=0.0001; //Initial guess to solve X
    fr=fsolve(f,fric);//Calculating friction factor
    sigmaK_l=1.3+5*(0.21)+1.8;// Minor losses
    H_ra=(alpha+(fr*L)/D+sigmaK_l)*(V_1^2/(2*g));//The required net head of the fan at the minimum flow rate
    H_req(i)=H_ra*(rho_a/(rho_w*0.0254));
end

printf('The operating point is at a volume flow rate of about 650 cfm, at which both the required and available net head equal about 0.83 inches of water. We conclude that the chosen fan is more than adequate for the job.\n');;
//From table 14-1 
x = [0 250 500 750 1000 1200];
y = [0.90 0.95 0.90 0.75 0.40 0.0];
yi=smooth([x;y],0.1); //This script used to smooth the linear curve of x,y defined above
xgrid(3);
xlabel('Volume flow rate in cfm',"fontsize", 2);
ylabel('H, inches of water',"fontsize", 2);
plot(V_cfm',H_req,'r',yi(1,:),yi(2,:));
legend('H_required','H_available');

