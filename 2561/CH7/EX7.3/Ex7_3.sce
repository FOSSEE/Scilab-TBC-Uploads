//Ex7_3
clc
Vo=(50)
disp("Vo= "+string(Vo)+" volts") // output voltage
Vi=(0.5)
disp("Vi= "+string(Vi)+" volts") // input voltage
disp("part(i)")  
A=Vo/Vi
disp("A= Vo/Vi="+string(A)) //Amplifier gain
H.D=10
disp("Harmonic_distortion="+string(H.D)+"%")// Percentage second harmonic distortion
D=(10*Vo)/100
disp("D= (10*Vo)/100 = "+string(D)+" volts") // Second Harmonic distortion 
Df=(1*Vo)/100
disp("Df= (1*Vo)/100 = "+string(Df)+" volts") // Harmonic distortion with Feedback
B=[D/(Df*A)]-(1/A) //Using formulae Df=[D/(1+A*B)]
disp("B=[D/(Df*A)]-(1/A) = "+string(B)) //Feedback factor
disp("part(ii)") 
Af=[A/(1+A*B)]
disp("Af= [A/(1+A*B)] = "+string(Af)) //Feedback gain
disp("part(iii)") 
Vif=Vo/Af
disp("Vif= Vo/Af = "+string(Vif)+" volts") // New input voltage required
