//Example 14-3
clc;clear;
// Given values
P_atm=101.3*1000; // Pa
g=9.81;// m/s^2
alpha=1.05;
eps=0.02*0.0254;//Roughness in m
D=4*0.0254;// in 'm' converted from 'in'
L=10.5*0.3048;//in 'm' converted from 'ft'
gradz=1.219;// grad z=(z_1-z_2) in m

// Calculation
A=((%pi*D^2)/4);//Area in m^2
v=300:10:700;//Volume flow rate in gpm
T=[25 60];//Temperature matrix
for j=1:1:length(T)
    //Water properties at T = 25°C and 60°C respectively
    if T(j)==25 then
        rho=997.0;// kg/m^3
        nu=8.91*10^-4;// Kinematic viscosity in kg/m.s 
        mu=nu/rho;
        P_v=3.169*1000;// Pa
    else
        rho=983.3;// kg/m^3
        nu=4.67*10^-4;// Kinematic viscosity in kg/m.s 
        mu=nu/rho;
        P_v=19.94*1000;// Pa
         
    end

for i=1:1:length(v);
    
    v_(i)=(6.309*10^-5)*v(i); //Volume flow rate in m3^s converted from gpm
    V(i)=v_(i)/A;//Velocity in m/s 
    Re=(4*v_(i))/(mu*%pi*D);//Reynolds number
            
    function [X]=fric(f)
    X=-2.0*log10(((eps)/(3.7*D))+((2.51)/(Re*sqrt(f))))-1/sqrt(f); //Friction factor as a implicit function of Re using Colebrook equation
    endfunction

    f=0.00001; //Initial guess to solve X
    fr=fsolve(f,fric);//Calculating friction factor
       
    sigmaK_l=0.5+(3*0.3)+6.0;// Minor losses
    H_l=((fr*L)/D+sigmaK_l)*(V(i)^2/(2*g));//The required net head of the fan at the minimum flow rate
    
    NPSH(j,i)=((P_atm-P_v)/(rho*g))+(gradz)-(H_l)-((alpha-1)*(V(i)^2)/(2*g));
end
end
F=[300 400 500 600 680];//Flow rate in gpm
N=[3.8 4.44 5.06 6.13 7.0];//minimum NPSH required approximately taken from Fig.14-21
plot(v',NPSH'*3.28,'r',F,N,'-o');
xlabel('v,gpm');
ylabel('NPSH,ft');
legend('Available NPSH, 25°C','Available NPSH, 60°C','Required NPSH');
printf('\nCavitation occurs at flow rates above approximately 600 gpm. \nThe maximum volume flow rate without cavitation decreases with temperature.')
