clear;
clc;
close;
disp("Example4.10")
Vt0=160 //takeoff velocity in m/s
Vt9=1000 //takeoff velocity in m/s
Vc0=800 //cruise velocity in m/s
Vc9=1000 //cruise velocity in m/s
//using approximation: engine propulsive efficiencfy(pe)=2/(1+V9/V0)
pet=2/(1+(Vt9/Vt0)) //takeoff
pec=2/(1+(Vc9/Vc0)) //cruise
disp(pet,"Engine propulsive efficiency while takeoff:")
disp(pec,"Engine propulsive efficiency while cruise:")