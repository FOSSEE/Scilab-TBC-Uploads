

//exapple 1.9 
clc; funcprot(0);
// Initialization of Variable
rho=1000;
mu=1.25/1000;
g=9.81;
pi=3.14
d1=0.28;//diameter of tank
d2=0.0042;//diameter of pipe
l=0.52;//length of pipe
rr=1.2/1000/d;//relative roughness
phid=0.00475;
disp(phid,"It is derived from tyhe graph giben in appedix and can be seen is arying b/w 0.0047 & 0.0048 dependent on D which varies from 0.25 to 0.45")
//calculations
function[a]=intregrate()
    s=0;
    for i=1:1000
        D=linspace(0.25,0.45,1000);
        y=sqrt(((pi*d1^2/pi/d2^2)^2-1)/2/9.81+(4*phid*l*(pi*d1^2/pi/d2^2)^2)/d2/9.81)*((0.52+D(i))^-0.5)*2/10000;
        s=s+y;
        
    end
    a=s;
endfunction
b=intregrate();
disp(b,"Time required to water level to fall in the tank in (s):");

    
