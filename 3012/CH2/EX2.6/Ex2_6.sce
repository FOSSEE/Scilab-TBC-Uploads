// Given:-
omega = 100.0                      //motor rotation speed in rad/s
tau = 18.0                         //torque applied by shaft in N.m
Welecdot = -2.0                    //electric power input in KW

Wshaftdot = (tau*omega)/1000      //shaft work rate in KW
Wdot = Welecdot + Wshaftdot       //net work rate in KW

//function [Qdot]=f(t)
//Qdot = (-0.2)* [1-2**(-0.05*t)]


//function [Edot]=f1(t)               //function for rate of change of energy
//Edot = (-0.2)*[1-2**(-0.05*t)] - Wdot 

//function [deltaE] =f2(t)            //function for change in energy  

t = linspace(0,120,100);
for i = 1:100
    Qd(i) = i
    Wd(i) = i
    dltaE(i) = i    
    Qd(i) =  (-0.2*(1-%e^(-0.05*t(i))))                                     
    Wd(i) = Wdot    
    dltaE(i) = 4*(1 - %e^(-0.05*t(i)))
end

subplot(2,2,1)                          
plot(t,Qd)
xlabel("Time (s)")
ylabel("Qdot (KW)")

subplot(2,2,2)
plot(t,Wd)
xlabel("Time (s)")
ylabel("Wdot (KW)")

subplot(2,2,3)
plot(t,dltaE)
xlabel("Time (s)")
ylabel("deltaE (KJ)")

