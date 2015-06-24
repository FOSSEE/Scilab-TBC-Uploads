function [k]=func1(n,r)  //calculating binomial coefficient
k=factorial(n)/(factorial(r)*factorial(n-r));
endfunction
func1(8,2)
func1(9,4)
func1(12,5)
func1(10,3)
func1(13,1)
 
p = factorial(10)/(factorial(10-7)*factorial(7));  //calculating 10C7
q= factorial(10)/(factorial(10-3)*factorial(3))  //calculating 10C3
disp(p,'value of 10C7 is')
//10-7=3 so 10C7 can also be computed as 10C3
//both p and q have same values but second method saves time and space