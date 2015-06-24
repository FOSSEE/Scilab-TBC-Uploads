clc; funcprot(0);//Example 14.7

//Initializing the variables
d = [0.1 0.125 0.15 0.1 0.1 ]; // Corrosponding to AA1B AA2B BC CD CF
l = [30 30 60 15 30];                // Corrosponding to AA1B AA2B BC CD CF
rho = 1.2;
f = 0.006;
Ha = 100;
Hf = 60;
He = 40;

//Calculations
for(i=1:length(d))
    K(i) = f*l(i)/(3*d(i)^5);
end

K_ab = K(1)*K(2)/(sqrt(K(1))+sqrt(K(2)))^2;
K_ac = K_ab + K(3);
Hc = (K_ac*Hf +K(5)*Ha/4)/(K_ac+K(5)/4);
Q = sqrt((Ha - Hc)/K_ac);

function[z] = f(n)
    z = He - Hc + (0.5*Q)^2 *(K(4)+(4000/n)^2);
endfunction

n = fsolve(1,f);

disp(n,"Percentage valve opening (%) :", Hc,"Head at C (m):", Q, "total Volume flow rate (m3/s):");