//Example 2.3
clc
format(7)
a=200*sqrt(2)
disp(a,"We know that     A_mid = 3dB gain x sqrt(2) =")
am=282.84/(sqrt(1+(((10/2)^2))))
format(6)
disp(am,"Above midband :       A = A_mid / sqrt(1+(f1/f)^2) =")  // answer in textbook is wrong
