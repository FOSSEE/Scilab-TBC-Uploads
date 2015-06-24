


/Example 6.12

//Least squares approximation

deff('[y]=f(x)','y=10-2*x+((x^2)/10)')
//we seek the polynomial of degree <= 2 which minimizes
//sum(n=1 to 9)[fn-p(xn)]^2
//we are dealing with scalar product with w(x)=1
P0(x)=1
//hence
s0=0;
B=0;
A1=0;
s1=0;
for n=1:1:6

s0=s0+1
B=[10+(n-1)/5]+B

A1=[10+[n-1]/5]*{[((n-1)/5)-0.5]^2}+A1

s1={[((n-1)/5)-0.5]^2}+s1

end
B0=B/s0

B1=A1/s1
C1=s1/s0

x=poly(0,"x")
y1=x-B0
x=poly(0,"x")
y2=((x-B0)^2)-0.1166667
//similarly calculate s2
s2=0.05973332
//p*(x)=(d0*)*P0(x)+(d1*)*P1(x)+(d2*)*P2(x)
//d0*=d0,d1*=d1,d2*=d2 are least squares approximation
//d0*=d0=sigma(n=1 to 6)[fn/6]      where fn=f(xn)

d0=0.03666667
d1=0.1
d2=0.0999999

x=poly(0,"x")
p=d0+d1*(x-B0)+d2*{[(x-B0)^2]-C1}
 //c1=c1* ,c2=c2*,c3=c3*
 c1=9.99998
c2=-1.9999998
c3=0.0999999
 