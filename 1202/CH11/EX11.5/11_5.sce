clear
clc

//Example 11.5
disp('Example 11.5')

K=1.54;theta=1.07;tau=5.93;


//(a)
tauca=tau/3;
Kc1=1/K*tau/(tauca+theta);taui1=tau; //Table 11.1
//(b)
taucb=theta;
Kc2=1/K*tau/(taucb+theta);taui2=tau; //Table 11.1
//(c)
//Table 11.3
Y=0.859*(theta/tau)^(-0.977);Kc3=Y/K;
taui3=tau*inv(0.674*(theta/tau)^-0.680); 
//(d)
//Table 11.3
Kc4=1/K*0.586*(theta/tau)^-0.916;taui4=tau*inv(1.03-0.165*(theta/tau)); 

mprintf('                   Kc          tauI')
mprintf('\nIMC(tauC=tau/3)   %f    %f',Kc1,taui1)
mprintf('\nIMC(tauC=theta)   %-5f    %f',Kc2,taui2)
mprintf('\nITAE(disturbance)  %f    %f',Kc3,taui3)
mprintf('\nITAE(set point)  %10f    %f',Kc4,taui4)
