//Example 16.13.
clc
format(6)
disp("To design a saturated collector coupled astable multivibrator")
disp("Let us assume that VCE(sat) = 0.2 V")
disp("Refer fig.16.31.")
disp("Here, C can be kept constant and timing resistor R can be varied to get appropriate Ton, Toff (or) R can be kept constant C can be varied.")
disp("Now, R <= hfe*Rc. Therefore, it is better to keep R constant.")
disp("RC = VCC-VC2(sat) / IC(ON)")
disp("Assuming VC2(sat) = 0.2 V")
rc=(12-0.2)/(1*10^-3)  // in ohm
x1=rc*10^-3  // in k-ohm
disp(x1,"  RC(k-ohm) = 12-0.2/1*10^-3 =")
r=100*11.8*10^3  // in ohm
x1=r*10^-6  // in M-ohm
disp("         R <= hfe*RC")
disp(x1,"  R(M-ohm) <=")
disp("Hence, let us assume that R = R1 = R2 = 1 M-ohm")
disp("    Toff = 0.693*R*C1")
format(4)
c1=(20*10^-6)/(0.693*10^6)  // in faraday
x1=c1*10^12  // in pF
disp(x1,"Therefore,  C1(pF) = ")
disp("    Ton = 0.693*R*C2")
format(5)
c1=(10*10^-6)/(0.693*10^6)  // in faraday
x1=c1*10^12  // in pF
disp(x1,"Therefore,  C2(pF) = ")