l = 1;
d = 0.95;
E0 = 2;
t = 0.25*10^-3;
dt = 117*10^-6;
up = (d/t)/(E0/l);
Dp = dt^2*d^2/(16*t^3);
C = Dp/up;
kT = 0.0259;
disp(up,"hole mobility (in square cm per Volt-second)=")
disp(Dp,"diffusion coefficient (in square cm per second)=")
disp(C,"Diffisuion coefficient/Hole mobility (in volts) = ")
disp("Verified according to Einstein Relation")