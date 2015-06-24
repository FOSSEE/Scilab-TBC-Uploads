//Engineering and Chemical Thermodynamics
//Example 8.15
//Page no :402

clear ; clc;
//Given 
R = 8.314 ;
T = 20 + 273 ;//[K]
A = 6000 ; //[J/mol]
B = -384 ; //[J/mol]
x_a = [0.001 ,0.03 ,0.05 ,0.06 ,0.075 ,0.1 ,0.12 , 0.13 ,0.15 ,0.2 ,0.25 ,0.3 ,0.35 ,0.4 ,0.45,0.475 ,0.5 ,0.55 ,0.6 ,0.65  ,0.7 ,0.75 ,0.8 ,0.8475 ,0.85  ,0.9 ,0.925 ,0.95 ,0.975 ,0.999] ;

for i = 1:30
    y_data(1,i) = R * T * ( x_a(1,i) * log(x_a(1,i)) + (1 - x_a(1,i)) * log(1- x_a(1,i))) + x_a(1,i) * (1 - x_a(1,i)) * (A + B * (2*x_a(1,i) - 1 )) ;
    y_data2(1,i) = - 82 * x_a(1,i)- 185.6 ;
end

m = min(y_data) ;
for i = 1:30
    if y_data(1,i) == m then
       a = x_a(1,i) ;
    end    
end


for i = 1: 30 
     y_data2(1,i) = -(R * T *( log(a)  - log(1 - a)) + A * (1 - 2*a) + B * (6 * a - 1 - 6 * a^2)) * (x_a(1,i) - a) + m ;
end

for i = 1:20
    y_data3(1,i) = y_data(1,i) - y_data2(1,i) ;
end
n = min(y_data3) ;

for i = 1:20
    if y_data3(1,i) == n then
       b = x_a(1,i) ;
    end    
end


disp(" Example: 8.15   Page no : 402") ;
plot(x_a ,y_data) ;
plot(x_a ,y_data2) ;
xtitle(" Figure E8.15","x_a","g - x_a * g_a - x_b * g_b") ;

printf("\n\n             The equilibrium composition can be found by drawing a line tangent to the minima .\n\n                     In this case the answer is %.2f and %.1f   ." , a ,b)