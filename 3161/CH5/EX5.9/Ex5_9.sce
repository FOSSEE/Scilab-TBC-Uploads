clc;
//page 296
//problem 5.9

//for error calculation e(n) = m(n) - [^hj(n)*m(n-1)+^hj(n)*m(n-2)+^hj(n)*m(n-3)+ ........+^hj(n)*m(n-N)]

//for coefficient upgradation ^hj(n+1) = ^hj(n)+um(n-j)e(n) where u = learning parameter = 0.1.
u = 0.1

//Assign m values taking from m = -3 to 5
//Denoting m(x) as matrix m where each element repesents from n = -3 to 5  
m = [0 0 0 1 2 3 4 5 6]

//taking e(n) as matrix e, ^hj(n) as matrises h_j
e = zeros(1,5)
h_1 = zeros(1,6)
h_2 = zeros(1,6)

//given ^h1(0)= ^h2(0) = 0
h_1(1) = 0
h_2(1) = 0

for i = 1:5
    e(i) = m(i+3) - h_1(i)*m(i+2) - h_2(i)*m(i+1)
    h_1(i+1) = h_1(i) + u*m(i+2)*e(i)
    h_2(i+1) = h_2(i) + u*m(i+1)*e(i)
end

//here e(3) is given as 1.32 but it is displaying 0.92
//here ^h2(3) is given as 0.26 but it is displaying 0.46

for i = 1:5
    disp('e('+string(i-1)+') = '+string(e(i)))
    disp('^h1('+string(i)+') = '+string(h_1(i+1)))
    disp('^h2('+string(i)+') = '+string(h_2(i+1)))
end
