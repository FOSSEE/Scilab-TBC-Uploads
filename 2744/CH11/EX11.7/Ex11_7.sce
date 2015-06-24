clear;
clc;
b = 9;// inches
t = 3/4;// inches
f_t = 8;// tons/in^2
f_s = 5;// tons/in^2
f_b = 10;// tons/in^2
d = 7/8;// inches
P = (b-d)*t*f_t;// tons
P_s = 2*0.25*%pi*d^2 *f_s;// tons
P_b = d*t*f_b;// tons
n = P/min(P_s,P_b);
e = (b-d)/b;// efficiency
P1 = f_t*(b-d)*t;// tons
P2 = f_t*(b-2*d)*t+P_s;// tons
P3 = f_t*(b-3*d)*t+3*P_s;// tons
P4 = f_t*(b-3*d)*t+6*P_s;// tons
printf('The number of rivets required, n = %d',round(n+1));
printf('\n The efficiency of the joint = %.1f percentage',e*100);
printf('\n The pull at section 11, P1 = %.2f rons/in^2',P1);
printf('\n The pull at section 22, P2 = %.1f rons/in^2',P2);
printf('\n The pull at section 33, P3 = %.2f rons/in^2',P3);
printf('\n The pull at section 44, P4 = %.2f rons/in^2',P4);
if P1 == min(P1,P2,P3,P4) then
    printf('\n The maximum possible pull which the flat will safely transmit is P1 = %.2f tons/in^2 at section 11',P1);
elseif P2 == min(P1,P2,P3,P4) then
    printf('\n The maximum possible pull which the flat will safely transmit is P2 = %.1f tons/in^2 at section 22',P2); 
elseif P3 == min(P1,P2,P3,P4) then 
    printf('\n The maximum possible pull which the flat will safely transmit is P3 = %.2f tons/in^2 at section 33',P3);
else
    printf('\n The maximum possible pull which the flat will safely transmit is P4 = %.2f tons/in^2 at section 44',P4);   
end

//there is a minute error in the answer given textbook.
