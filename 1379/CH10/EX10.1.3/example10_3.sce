

//example 10.3
clc; funcprot(0);
//exapple 10.3 
// Initialization of Variable
rho1=2600;//density lighter
rho2=5100;//density heavier
pd1=0.000015:0.000010:0.000095;//particle diameter lighter
pd2=0.000025:0.00001:0.000095;//particle diameter heavier
wp1=[0 22 35 47 59 68 75 81 100];//weight distribution lighter
wp2=[0 21 33.5 48 57.5 67 75 100];//weight distribution heavier
rho=998.6;//density water
mu=1.03/1000;//viscosity water
g=9.81;
u=0.004;//velocity of water
d=95/1000000;//paeticle diameter maximum
//calculation
//part 1
Re=d*u*rho/mu;
d1=sqrt(18*mu*u/g/(rho1-rho));
d2=sqrt(18*mu*u/g/(rho2-rho));
function[a]=inter(d,f,g,b);//interpolation linear
    for i=1:b
        if d<=f(i+1)& d>f(i)  then
            break
        else 
            continue
        end
        break
    end
    a=(d-f(i))/(f(i+1)-f(i))*(g(i+1)-g(i))+g(i);
endfunction
[a]=inter(d1,pd1,wp1,9);
[b]=inter(d2,pd2,wp2,8);
v2=1/(1+5)*100-b/100*1/(1+5)*100;
v1=5/(1+5)*100-a/100*5/(1+5)*100;
pl2=(v2)/(v2+v1);
disp(pl2, "The fraction of heavy ore remained in bottom");
 //part 2
 rho=1500;
 mu=6.25/10000;
 a=log10(2*d^3*rho*g*(rho1-rho)*3*mu^2);//log10(Re^2(R/rho/mu^2))
  //using value from chart(graph)
Re=10^0.2136;
u=Re*mu/rho/d;
d2=sqrt(18*mu*u/g/(rho1-rho));
[b]=inter(d2,pd2,wp2,8);
disp(100-b+3.5,"The percentage of heavy ore left in this case");
//part 3
a=0.75//% of heavy ore in overhead product
s=100*5/6/(100*5/6+0.75*100/6);
disp(s,"the fraction of light ore in overhead product:");
//part 4
da=pd2(1);
db=pd1(9);
rho=(da^2*rho2-db^2*rho1)/(-db^2+da^2);
  disp(rho,"The minimum density required to seperate 2 ores in kg/m^3:")
