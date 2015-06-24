//Example 1.1.
format(6)
epsilon=8.854*10^-12
h=6.62*10^-34 //planck's constant
m=9.1*10^-31 //mass of electron
q=1.6*10^-19 //charge of electron
for n=1
r1=(epsilon*(h^2)*(n^2))/(%pi*m*(q^2)) //radius of 1st orbit for hydrogen
x1=r1*10^10  // in A.U
disp(x1,"r1(A.U)=")
end
for n=2
r2=(epsilon*(h^2)*(n^2))/(%pi*m*(q^2)) //radius of 2st orbit for hydrogen
x2=r2*10^10  // in A.U
disp(x2,"r2(meters)=")
end
for n=3
r3=(epsilon*(h^2)*(n^2))/(%pi*m*(q^2)) //radius of 3st orbit for hydrogen
x3=r3*10^10  // in A.U
disp(x3,"r3(meters)=")
end