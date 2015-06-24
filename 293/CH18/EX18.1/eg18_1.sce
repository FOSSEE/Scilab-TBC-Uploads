//a
V1 = 440/sqrt(3);
s = 0.025; //slip
r1 = 0.1;
r2 = 0.12;
x1 = 0.35;
x2 = 0.4;

z = complex(r1 + r2/s, x1 + x2);
i2 = V1/z; //input line current
I2 = sqrt(real(i2)^2 + imag(i2)^2); //magnitude of input line current 
disp("a")
disp(i2,"input line current = ")

i1 = complex(18*cos(-1.484), 18*sin(-1.484)); // magnetizing current
I1 = sqrt(real(i1)^2 + imag(i1)^2); //magnitude of magnetizing current
i = i1 + i2; //total current drawn from the voltage source
I = sqrt(real(i)^2 + imag(i)^2); //magnitude of total current  
theta = atan(imag(i)/real(i)); //phase difference between current and voltage 
pf = cos(theta); //power factor
disp(pf,"power factor = ")
if theta >= 0 then
    disp("leading")
else disp("lagging")
end

//b
f = 60; //hertz 
ns = 1800; 
ws = 2*%pi*ns/f; //stator angular velocity
Pg = 3*I2^2*r2/s; //power 
T = Pg/ws; //developed electromagnetic torque
disp("b") 
disp(T,"developed electromagneic torque (in Newton-meter) = ")

//c
Prot = 950; //rotational losses (in watts)
Po = Pg*(1 - s) - Prot ; //output power
HPo = Po/746; //output horse power
disp("c")
disp(HPo,"output horse power = ")

//d
Pc = 1200; //core losses (in W)
SCL = 3*I^2*r1; //stator copper loss
RCL = 3*I2^2*r2; //rotar copper loss
loss = Pc + SCL + RCL + Prot; //total losses
Pi = real(3*V1*i); //input power
efficiency = 1 - (loss/Pi); 
disp(efficiency,"efficiency = ")