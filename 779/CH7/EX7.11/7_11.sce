Pa = 130e03; Pb = 100e03;
Ta = 50+273; Tb = 13+273;
cp = 1.005;
Ss = integrate('cp/T','T',Ta,Tb)-integrate('0.287/p','p',Pa,Pb);
Ssy = 0;
Su = Ss+Ssy;
disp("kJ/Kg K",Su,"Change in the entropy of the universe is")
disp("As the change in entropy of the universe in the process A-B is negative so the flow must be from B-A")