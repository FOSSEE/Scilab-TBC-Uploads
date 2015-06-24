//example2.7
clc
disp("V=200 V, I_a=30 A, R_a=0.75 ohm are the given values.")
disp("For a motor,  V=(E_b)+[(I_a)*(R_a)]")
disp("Therefore,    220=(E_b)+(30*0.75)")
e=220-(30*0.75)
disp(e,"E_b(in V)=")
disp("This is the induced emf called back emf in a motor")
