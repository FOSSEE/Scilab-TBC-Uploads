

//exapple 2.3 
clc; funcprot(0);
// Initialization of Variable
//1 refer to initial condition
R=8.314;
P1=550*10^3;
T1=273+350;
M=18/1000;
d=2.4/100;
pi=3.1428;
A=pi*d^2/4;
gamm=1.33;
roughness=0.096/1000/d;
l=0.85;
phi=0.0035//assumed value of friction factor
//calculation
nu1=R*T1/M/P1;
Pw=0.4*P1;//estimation
nuw=(P1/Pw)^0.75*nu1;
enthalpy=3167*1000;
Gw=sqrt(enthalpy*A^2/(gamm*nuw^2/(gamm-1)-nu1^2/2-nuw^2/2));
function[y]=eqn(x)
 y=log(x/nu1)+(gamm-1)/gamm*(enthalpy/2*(A/Gw)^2*(1/x^2-1/nu1^2)+0.25*(nu1^2/x^2-1)-.5*log(x/nu1))+4*phi*l/d;
endfunction
deff('y=f(x)','eqn');
[x,v,info]=fsolve(0.2,eqn);

if x~=nuw then
    disp("we again have to estimate Pw/P1");
    disp("new estimate assumed as 0.45")
    Pw=0.45*P1;//new estimation
    nuw=(P1/Pw)^0.75*nu1;
// & we equalise nu2 to nuw
nu2=nuw; 
Gw=sqrt(enthalpy*A^2/(gamm*nuw^2/(gamm-1)-nu1^2/2-nuw^2/2));
printf("mass flow rate of steam through pipe (kg/s): %.2f",Gw); 
//part 2
disp(Pw/1000,"pressure of pipe at downstream end in (kPa):");
  
else
    disp("our estimation is correct");
    
end
//part3
enthalpyw=2888.7*1000;//estimated from steam table
Tw=sqrt((enthalpy-enthalpyw+.5*Gw^2/A^2*nu1^2)*2*A^2/Gw^2/R^2*M^2*Pw^2);
disp(Tw-273,"temperature of steam emerging from pipe in (Celcius):")



