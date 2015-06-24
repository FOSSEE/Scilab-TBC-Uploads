//Ex3_4
clc
Bx = 40*10^-6
By = 10*10^-6
N = 10^6
e = -1.6*10^-19
v = 8*10^6
disp("B = "+string(Bx)+"ax + "+string(By)+"ay Wb/m-sq")//magnetic field
disp("N = "+string(N))//number of electrons
disp("e = "+string(e)+"C")//electron charge
disp("v = "+string(v)+"ax m/s")//velocity of electron
disp("F = Q(VxB) = "+string(e*N*v*By)+" az N")//force on electron
//as we are taking curl of V and B,.. thus Vx X Bx = 0
//force will be only due to V x By.
