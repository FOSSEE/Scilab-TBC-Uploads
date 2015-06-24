
clear;
clc;
         //a) periodicity os 5sin(6t-pi/4)
t=0:0.001:1;
w=6;
theta=%pi/4;
T=2*%pi/w;
x=cos(t*w+theta);
y=cos((t+T)*w+theta);
if ceil(x)==ceil(y) then
    disp(' a) cos(6t+pi/4) is periodic with T=2*pi/6 (sec) ')
    
else
    disp('nonperiodic')
end


         //b) periodicity of e^(j3t)
         
  w=3;       
  t=0:0.001:1;
  T=2*%pi/w;
  x=exp(3*%i*t);
  y=exp(3*%i*(t+T));
   if ceil(x)==ceil(y) then
    disp(' b) exp(j3t) is periodic with T=2*pi/3 (sec) ')
    
else
    disp('nonperiodic')
end
      
      
      //c) periodicity of cot(3t+theta)
      
    t=0:0.001:1;
w=5;
T=%pi/w;

  x=cotg(t*w+theta);
  y=cotg((t+T)*w+theta);
if ceil(x)==ceil(y) then
    disp(' c) cot(3t+Theta) is periodic with T=pi/5 (sec) ')
    
else
    disp('nonperiodic')
end
  
      
