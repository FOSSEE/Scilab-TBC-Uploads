//Chapter 14
//Example 14.4
//Page 388
//onfault
clear;clc;
H = 5;
Pm =1;
Vt = 1;V_ib = 1;
X1_g =0.2;X1_t = 0.1;X1_l1 = 0.4;X1_l2 = 0.4;
X = X1_t + X1_l1 /2;
a = asin(Pm * X / (Vt * V_ib)) * 180 / %pi;
Vt1 = Vt * (cos(a * %pi / 180) + %i * sin(a * %pi / 180));
I = (Vt1 - V_ib) / (%i * X);
E1 = Vt1 + (%i * X1_g * I);
y10 = %i * 3.33;
y32 = %i * 2.5;
y30 = %i * 5;
y20 = %i * 5;
Ybus = zeros(3,3);
Ybus(1,1) = -y10;Ybus(1,2) =0;Ybus(1,3) = y10;
Ybus(2,1) = Ybus(1,2);Ybus(2,2) = -(y32 + y30);Ybus(2,3) = y32;
Ybus(3,1) = Ybus(1,3);Ybus(3,2) = Ybus(2,3);Ybus(3,3) = -(y10 + y32 + y30);
disp(Ybus,'Ybus formed by inspection is')
[m,n] = size(Ybus);
Ybus_new = zeros(m-1,n-1);
for c = 1:m-1
    for d = 1:n-1
    Ybus_new(c,d) = Ybus(c,d) - ((Ybus(c,3)*Ybus(3,d)) / Ybus(3,3));
    end
end
disp(Ybus_new,'Ybus formed after elimination of Bus 3')
Pmax = abs(E1) * V_ib * abs(Ybus_new(1,2));
delta = 28.44;
Pa = Pm - Pmax * sin(delta * %pi / 180);
b = 180 * Pa / H;
disp('The power abgle equation is')
printf("\n Pe = %.3f * sin(delta) \n where delta is the machine rotor angle wrt to the infinite bus",Pmax)
disp('The swing equation is')
printf("\n (%.2f/180f) * d(delta)^2/dt^2 = %.2f - %.2fsin(delta) \n",H,Pm,Pmax)
printf("\n Intial Accelerating power is %.3f per unit \n",Pa)
printf("\n Initial acceleration is %.2f*f \n where f is the system frequency",b)