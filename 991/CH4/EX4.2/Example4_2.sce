//Example. 4.2.
clc
disp("The Fermi level in an N-type material is given by")
disp("Ef = Ec - k*T*ln(Nc/Nd)")
disp("(Ec - Ef) = k*T*ln(Nc/Nd)")
disp("At T = 300 K,")
disp("0.3 = 300*k*ln(Nc/Nd)                  Eq.1")
disp("Similarly,")
disp("(Ec - Ef1) = 360*k*ln(Nc/Nd)             Eq.2")
disp("Eq.2 divided by Eq.1 gives,")
disp("(Ec - Ef1)/0.3 = 360/300")
disp("Therefore,      (Ec - Ef1) = (360/300) x 0.3")
q=(360/300)*0.3
disp(q,"Ec - Ef1= ")
disp("Hence, the new position of the Fermi level lies 0.36 eV below the conduction level")