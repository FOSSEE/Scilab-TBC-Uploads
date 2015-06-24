//Example 3.7.
clc
format(8)
q=1.6*10^-19
Va=40
m=9.1*10^-31
B=0.91
ve=sqrt(2*q*Va/m)
disp(ve,"The velocity of the electron is(m/s)= sqrt(2qVa/m) =")
format(7)
tt=(2*%pi*m)/(B*q)
disp(tt,"The time taken for one revolution is T(seconds) = 2*pi*m / B*q =")
format(9)
p=tt*ve*(sqrt(3)/2) //cos(30)=sqrt(3)/2
disp(p,"The pitch(meters) = T*v*cos(theta) =")
disp(p,"Thus, the electron has travelled(meters)= ")