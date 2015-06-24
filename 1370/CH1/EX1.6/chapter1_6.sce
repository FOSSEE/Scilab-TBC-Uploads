//example1.6
clc
disp("The current distribution using KCL is as shown,")
disp("Key Point : KVL should not be applied to the loop consisting current source.")
disp("From branch DE,")
disp("(i1)=5+3(i2)  ...(1)")
disp("Applying KVL to the loop BCDEFGB without current source,")
disp("-1*(5+3(i2))+5(i2)=0    ...(2)")
disp("2(i2)=5")
i=5/2
disp(i,"i2(in amp)=")
disp("from eq.(1)")
i=5+(3*2.5)
disp(i,"i1(in amp)=")
