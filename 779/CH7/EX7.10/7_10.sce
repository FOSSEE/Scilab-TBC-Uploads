P1 = 0.5e06;
V1 = 0.2; V2 = 0.05;
n = 1.3
P2 = P1*(V1/V2)^n;
function y = H(p)
  y = ((P1*V1^n)/p)^(1/n);
endfunction
H = integrate('H','p',P1,P2); // H = H2-H1
U = H-(P2*V2-P1*V1);
W12 = -U;
disp("kJ",H/1000,"Change in enthalpy is")
disp("kJ",U/1000,"Change in internal energy is")
disp("kJ",0,"and",0,"The change in entropy and heat transfer are")
disp("kJ",W12/1000,"The work transfer during the process is ")