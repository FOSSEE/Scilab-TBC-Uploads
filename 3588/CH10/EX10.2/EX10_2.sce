//Clearing console
clc
clear

//Intializing variables
mg = 20
k = 40
g = 386.4

//Calculating circular frequency
w1 = sqrt(k*g/mg)
w2 = sqrt(6*k*g/mg)

k1 = [1 1;2 -0.5]
f1 = [1;0.5]
k2 = [27.8 68.1;2*27.8 0.5*68.1]
f2 = [0;0]
//Solving for constants in equations of motion
u1=linsolve(k1,-f1)
u2=linsolve(k2,-f2)

fi1 = acosd(u2(1,1))
fi2 = acosd(u2(2,1))

a1 = u1(1,1)/sind(fi1)
a2 = u1(2,1)/sind(fi2)

printf('\nResults\n')
printf('\nCircular Frequency1 =%frad/sec\n Amplitude1 =%fin\n Phase Angle1 =%fdegree',w1,a1,fi1)
printf('\nCircular Frequency2 =%frad/sec\n Amplitude2 =%fin\n Phase Angle2 =%fdegree',w2,a2,fi2)

