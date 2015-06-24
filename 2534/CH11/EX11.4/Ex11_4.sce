//Ex11_4
clc
//according to the given eqution for output current, we have:
I1 = 5.0
I2 = 0.9
I3 = 0.6
I4 = 0.3
I5 = 0.01
D2 = I2/I1// second harmonic distortion
D3 = I3/I1//third harmonic distortion
D4 = I4/I1//fourth harmonic distortion
D5 = I5/I1//fifth harmonic distortion
disp("I1 = "+string(I1)+"A")
disp("I2 = "+string(I2)+"A")
disp("I3 = "+string(I3)+"A")
disp("I4 = "+string(I4)+"A")
disp("I5 = "+string(I5)+"A")
disp("D2 = I2/I1 = "+string(D2))
disp("D3 = I3/I1 = "+string(D3))
disp("D4 = I4/I1 = "+string(D4))
disp("D5 = I5/I1 = "+string(D5))
D = [(D2^2)+(D3^2)+(D4^2)+(D5^2)]^(1/2)//total harmonic distortion
disp("D = [(D2^2)+(D3^2)+(D4^2)+(D5^2)]^(1/2) = "+string(D*100)+"%")
