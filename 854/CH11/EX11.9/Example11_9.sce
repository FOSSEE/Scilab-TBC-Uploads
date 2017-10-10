//clear//
//Caption:Program to find the input impedance for a line terminated with pure capacitive impedance
//Example11.9
//page363
clc;
close;
EL= 288*%pi/180;
ZL = -%i*300; //load impdance is purely capacitive impedance
ZR  = 300;
T = (ZL-ZR)/(ZL+ZR);//reflection coefficient in rectandular form
[R,teta] = polar(T)//reflection coefficient in polar form

if(R == 1)
  Zo = ZR;
  S = %inf;
else
    S = (1+R)/(1-R);
end
Zin =Zo*(ZL*cos(EL)+%i*Zo*sin(EL))/(Zo*cos(EL)+%i*ZL*sin(EL));
disp(T,'Reflection coefficient in rectangular form')
disp(S,'Voltage Standing Wave Ratio S=')
disp(Zin,'Input impedance in ohms Zin =')
//Result
//Reflection coefficient in rectangular form   
//   - i    
//Voltage Standing Wave Ratio S=   
//    Inf  
//Input impedance in ohms Zin =   
//    588.78315i