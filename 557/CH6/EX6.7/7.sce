clc;funcprot(0); //Example 6.7 

//Initializing the variables 
B = 0.9;
H = 0.25;
alpha = 1.1;
g = 9.81; 

//Calculations
Q = 1.84 * B * H^(3/2);
disp(Q, "Q :");

i = 1;
while(i < = 3)
    v = Q /(1.2* (H+0.2));
    disp(v, "V(m/s) :");
    k =  ((1 + alpha*v^2/(2*g*H))^1.5 -(alpha*v^2/(2*g*H))^1.5 );
    Q = k* 1.84 * B * H^(3/2);
    disp(Q, "Q(m3/s) :");
    i = i+1;
end