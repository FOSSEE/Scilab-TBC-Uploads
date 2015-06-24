//Example 16.12.
clc
format(5)
t=1/(100*10^3)  // in seconds
x1=t*10^6  // in us
disp(x1,"The period of oscillation is,  T(us) = 1/f =")
disp("        T1 = 2us  (given)")
t2=10-2 // in us
disp(t2,"Hence,  T2(us) = T - T1 =")
disp("        T1 = 0.693*R1C1")
c1=(2*10^-6)/(0.693*(20*10^3))  // in faraday
x1=c1*10^12  // in pF
disp(x1,"Therefore,  C1(pF) = T1 / 0.693R1 =")  //answer in textbook is wrong
c2=(8*10^-6)/(0.693*(20*10^3))  // in faraday
x1=c2*10^12  // in pF
disp("        T2 = 0.693*R2*C2")  //answer in textbook is wrong
disp(x1,"Therefore,  C2(pF) = T2 / 0.693R2 =")