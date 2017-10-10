clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 7.4.1\n')
//given data
E=1.96*10^11//youngs modulus in N/m^2
I=4*10^-7//moment of area in m^4
M1=100;M2=50//mass of discs 1 and 2 in Kgs
c=0.18//distance of disc 1 from support in m
l=0.3//distance of disc 2 from support in m
g=9.81//aceleration due to gravity in m/sec^2
//calculations
a=[(c^3/(3*E*I)),(c^2/(6*E*I)*(3*l-c));(c^2/(6*E*I)*(3*l-c)),(l^3/(3*E*I))]//from SOM
x1(1)=1;x2(1)=1
for i=1:10//upto 10th iteration for more perfect answer
F1(i)=100*x1(i)//'i' represents the dash(')
F2(i)=50*x2(i)
x1(i)=F1(i)*a(1,1)+F2(i)*a(1,2)
x2(i)=F1(i)*a(2,1)+F2(i)*a(2,2)
r=(x2(i)/x1(i))
x2(i+1)=r
x1(i+1)=1
end
x1dd=1
W1=(x1dd/x1(10))
W2=(r/x2(10))
Wn=sqrt((W1+W2)/2)//natural frequency in rad/sec
mprintf('The natural frequency of system in iilustrative example 7.2.1 obtained by\nStodala method is Wn=%f rad/sec',Wn)
mprintf('\nNOTE:The obtained answer is more near to the perfect answer \since 10 iterations/trials\nhas been carried out.In textbook only upto 3rd iteration has been carried out')
