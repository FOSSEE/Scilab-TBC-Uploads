//Example 7.6.
clc
format(6)
IDSS=40*10^-3
VP=-10
VGSQ=-5
disp("We know that,  ID = IDSS * [1 - (VGS/VP)]^2")
disp("Substituting the given values, we get")
ID = IDSS*[1-(VGSQ/VP)]^2
ID1=ID*10^3
disp(ID1,"  ID(mA) =")
RS=abs(VGSQ/ID)
disp(RS,"Therefore,  RS(ohm) = |VGSQ / ID| =")