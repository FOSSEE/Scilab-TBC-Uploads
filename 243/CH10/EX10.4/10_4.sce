//Example No. 10_04
//Curve Fitting
//Pg NO. 335
clear ; close ; clc ;

x = 1:4 ;
y = [6 11 18 27 ];
n = length(x) //Number of data points
m = 2+1       //Number of unknowns
disp('Using CA = B form , we get')
for j = 1:m
    for k = 1:m
        C(j,k) = sum(x.^(j+k-2))
    end
    B(j) = sum( y.*( x.^( j-1 ) ) )
end
disp(B,'B = ',C,'C = ')
A = inv(C)*B
disp(A,'A = ')
printf('Therefore the least sqaures polynomial is\n   y = %i + %i*x + %i*x^2 \n',A(1),A(2),A(3))