//Example 18.14.
clc
format(6)
disp("Load current varies from 0 to 20 mA")
disp("    IZ(min) = 10 mA, IZ(max) = 100 mA")
disp("Here,    Vz = Vo = 10 V (constant)")
disp("Applying KVL to a closed loop circuit,")
disp("    20 = IR + 10")
disp("or    IR = 10")
disp("Therefore, R = 10/I ohm, where I is the loop current in amperes")
disp("(i) Let IZ = IZ(min) and IL = 0")
disp("    The total current  I = IL + IZ = 10 mA")
r=10/(10*10^-3)  // in ohm
disp(r,"    Therefore,  R(ohm) =")
disp("(ii) For IZ = IZ(max) = 100 mA and IL = 20 mA")
i=20+100  // in mA
disp(i,"     I(mA) = IL + IZ =")
r=10/(120*10^-3)
disp(r,"     Therefore,  R(ohm) =")
disp("(iii) The range of R varies from 83.33 ohm to 1000 ohm")