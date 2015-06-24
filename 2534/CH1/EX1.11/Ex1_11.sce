//Ex1.11
clc
Hx = 1*10^-3  //magnetic field in x-axis
Hy = 2*10^-3  //magnetic field in y-axis
V = (4*10^6)  //electron velocity
micro_not=(4*%pi*(10^-7)) //permitivity in vaccum
e=1.6*10^-19  //charge of electorn
disp("H = "+string(Hx)+"ax  + "+string(Hy)+"ay A/m")
disp("V = "+string(V)+"ay m/s")
Bx = micro_not*Hx; By = micro_not*Hy //magnetic flux density
disp("B = micro_not*H = "+string(Bx)+"ax + "+string(By)+"ay wb/m.sq")
disp("F = e[VxB] = "+string(e*V*Bx)+"az N") //force on electron due to field


// note : there is a misprint in the textbook for the above problem
