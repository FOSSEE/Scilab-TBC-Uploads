//Example 4.3.
clc
disp("The Fermi level in a P-type material is given by")
disp("Ef = Ev + k*T*ln(Nv/Na)")
disp("Therefore,      (Ef - Ev) = k*T*ln(Nv/Na)")
disp("At T=300 K,      0.3 = 300*k*ln(Nv-Na)                  Eq.1")
disp("(a) At T=350 K, (Ef1 - Ev) = 350*k*ln(Nv/Na)            Eq.2")
disp("Hence, from the above Eq.2 and Eq.1,")
disp("(Ef1 - Ev)/0.3 = 350/300")
q1=(350/300)*0.3
disp("eV",q1,"Therefore, (Ef1 - Ev) = (350/300)*0.3 = ")
disp("(b) At T=400 K, (Ef2 - Ev) = 400*k*ln(Nv/Na)            Eq.3")
disp("Hence, from the above Eq.3 and Eq.1,")
disp("(Ef2 - Ev)/0.3 = 400/300")
q2=(400/300)*0.3
disp(q2,"Therefore, (Ef2 - Ev) = (400/300)*0.3 = ")  // in eV