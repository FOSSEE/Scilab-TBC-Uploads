
//example 6.3
clc; funcprot(0);
clf()
//exapple 6.3 
// Initialization of Variable
Q=[0 0.01 0.02 0.03 0.04 0.05];//discharge
effi_hyd=[65.4 71 71.9 67.7 57.5 39.2];
effi_over=[0 36.1 56.0 61.0 54.1 37.0];
H_sys=[0 0 0 0 0 0]
d=0.114;//diameter of pipe
d_o=0.096;//diameter of impeller
h=8.75;//elevation
g=9.81;//acc. of gravity
rho=999;//denisity of water
l=60;//length of pipe
theta=0.611;//angle in radians
B=0.0125;//width of blades
pi=3.1412
mu=1.109/1000;//viscosity of water
omega=2*pi*1750/60;
// calculation
 for i=1:6
     if i==1 then
     H_sys(i)=h;
 else
     
    H_sys(i)=h+8*Q(i)^2/pi^2/d^4/g*(1+8*l*0.0396/d*(4*rho*Q(i)/pi/d/mu)^-0.25);
end,
end;
H_theor=omega^2*d_o^2/g-omega*Q/2/pi/g/B/tan(theta);
//disp(H_sys"head of system (in m)");
//disp(H_theor);
for i=1:6
    H_eff(i)=effi_hyd(i)*H_theor(i)/100;
end
//disp(H_eff);
plot(Q,effi_hyd, 'r--d');
plot(Q,effi_over, 'g');
plot(Q,H_eff,'k');
plot(Q,H_theor);
plot(Q,H_sys ,'c-');
title('system characteritics');
ylabel('Head(m)or Efficiency(%)');
xlabel('volumetric flow rate(m^3/s)');
//calculation of power
//at intersecting point using datatrip b/w H_sys &H_eff
Q=0.0336
effi_over=59.9
H_eff=13.10
P=H_eff*rho*g*Q/effi_over/10;
disp(P ,"Power required to pump fluid at this rate(in KW):")




