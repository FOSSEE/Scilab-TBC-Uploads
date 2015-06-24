//Example 6.5

//xn=10+(n-1)/5
//Accordingly we choose
//phi1(x)=1 , phi2(x)=x ,phi3(x)=(x)^3
A=[6 63 662.2; 63 662.2 6967.8; 662.2 6967.8 73393.5664]
norm(A,'inf')
x=[10.07 -2 0.099]'
A*x
norm(A*x,'inf')
norm(A*x)
a=(norm(x))/norm((A)^(-1))

//norm(A*x) >=norm(x)/norm((A)^(-1))
// norm(A^(-1),'inf') >= 7.8

cond(A)

//the condition number of A is much larger than 10^5, so we take
deff('[y]=f(x)','y=10-2*x+(((x)^2))/2')
//f(x) is a polynomial of degree 2 ,F*(x) should be f(x) itself

c1=10
c2=-2
c3=0.1

// by using elimination algorithm (Gauss elimination), we get
c1=9.99999997437
c2=-1.999999951
c3=0.099999976
 // by 14-decimal digit floating point arith metic method
 c1=6.035
 c2=-1.243
 c3=0.0639
 //calculation carried out in seven decimal digit floating point arithmetic
 c1=8.492
 c2=-1.712
 c3=0.0863
 