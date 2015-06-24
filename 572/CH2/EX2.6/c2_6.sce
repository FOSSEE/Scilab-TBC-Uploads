//(2.6) The rate of heat transfer between a certain electric motor and its surroundings varies with time as Qdot = -.2[1-e^(-.05t)] where t is in seconds and Qdot in KW.The shaft of the motor rotates at a constant speed of omega = 100 rad/s and applies a constant torque of tau = 18 N.m to an external load. The motor draws a constant electric power input equal to 2.0 kW. For the motor, plot Qdot and Wdot,each in kW, and the change in energy deltaE in kJ, as functions of time from t =0 to t = 120s.

//solution

//initializing variables
omega = 100;                      // motor rotation speed in rad/s
tau = 18;                         //torque applied by shaft in N.m
Welecdot = -2;                    // electric power input in KW

funcprot(0);
Wshaftdot = (tau*omega)/1000;     //shaft work rate in KW
Wdot = Welecdot + Wshaftdot;      //net work rate in KW

function [Qdot]=f(t)
    Qdot = (-.2)* [1-%e^(-.05*t)];
endfunction

function [Edot]=f1(t)              //function for rate of change of energy
    Edot =(-.2)* [1-%e^(-.05*t)] - Wdot ;
endfunction;

function [deltaE] =f2(t)           //function for change in energy  
    deltaE = intg(0,t,f1);    
endfunction;

t = linspace(0,120,100);
for i = 1:100
    Qdt(1,i)= f((120/99)*(i-1));
    Wdt(1,i)= Wdot;
    dltaE(1,i)= f2((120/99)*(i-1));
end
plot2d(t,Qdt,rect=[0,-.25,120,0]);
plot2d(t,Wdt,style=5,rect=[0,-.25,120,0]);
xtitle("","time,s","Qdot,Wdot,KW");
legend("Qdot","Wdot");
xset('window',1);
plot2d(t,dltaE);
xtitle("deltaE versus time","Time, s","deltaE, KJ");
