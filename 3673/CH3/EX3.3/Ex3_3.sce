//Example 3_3 page no:115
clc
//apply super position theorem to the given circuit
V=1/(0.1+0.05+0.143)
V1=(V/7)*2//voltage across 2 ohm resistor due to 10 volt
V=2.86/(0.143+0.05+0.1)
V2=((V-20)/7)*2//voltage across 2 ohm resistor due to 20 volt
I=2*(5/(5+8.67))
V3=I*2//voltage due to 2A current source in 2 ohm resistor
V=V1+V2-V3
disp(V,"voltage across 2 ohm resistor is (in volt)")
disp("negative sign indicates that the voltage is in opposite direction")
