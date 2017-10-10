clc; funcprot(0);
clf()
//exapple 6.4 
// Initialization of Variable
//each is increased by five units to make each compatible for graph plotting
mu=1.109/1000;
Q=[0 0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1];//flow rate
HeffA=[20.63 19.99 17.80 14.46 10.33 5.71 0 0 0 0 0 ];//Heff of pump A
HeffB=[18 17 14.95 11.90 8.10 3.90 0 0 0 0 0];//Heff of pump B
alpha=1;
h=10.4;
d=0.14;
l=98;
pi=3.1412;
g=9.81;
rho=999;
for i=1:11
     if i==1 then
     H_sys(i)=h;
 else
     
    H_sys(i)=h+8*Q(i)^2/pi^2/d^4/g*(1+8*l*0.0396/d*(4*rho*Q(i)/pi/d/mu)^-0.25);
end,
end;
//H_sys is head of the system
disp(H_sys, "the head of system in terms of height of water :");
plot(Q,H_sys,'r--d');
plot(Q,HeffA ,'-c');
plot(Q,HeffB);
//at intersecting point using datatrip b/w H_sys &amp;H_effA
disp(0.03339,"the flow rate at which H_sys takes over HeffA");