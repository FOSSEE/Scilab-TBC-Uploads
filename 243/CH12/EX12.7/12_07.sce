//Example No. 12_07
//Romberg Integration formula
//Pg No. 391
clear ;close ;clc ;

deff('F = f(x)','F = 1/x');
//since we can't have (0,0) element in matrix we start with (1,1)
a = 1 ;
b = 2 ;
h = b-a ;
R(1,1) = h*(f(a)+f(b))/2 
disp(R(1,1),'R(0,0) = ')
for i = 2:3
    h(i) = (b-a)/2^(i-1)
    s = 0
    for k = 1:2^(i-2)
        s = s + f(a + (2*k - 1)*h(i));
    end
    R(i,1) = R(i-1,1)/2 + h(i)*s;
    printf('\nR(%i,0) = %f \n',i-1,R(i,1))
end
for j = 2:3
    for i = j:3
        R(i,j) = (4^(j-1)*R(i,j-1) - R(i-1,j-1))/(4^(j-1)-1);
        printf('\nR(%i,%i) = %f \n',i-1,j-1,R(i,j))
    end
end