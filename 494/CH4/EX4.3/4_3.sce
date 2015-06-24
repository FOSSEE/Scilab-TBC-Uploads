//All the quantities are expressed in SI units

alpha = [0 4 8 12];
c_l = [0.25 0.65 1.08 1.44];
c_d = [0.0065 0.0070 0.0112 0.017];

for i = 1:4
    L_by_D(i) = c_l(i)/c_d(i);
end

temp = [alpha' c_l' c_d' L_by_D];
printf("\nRESULTS\n--------\n  alpha     Cl      Cd         Cl/Cd")
disp(temp)