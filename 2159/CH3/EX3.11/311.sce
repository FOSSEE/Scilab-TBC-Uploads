// problem 3.11
d1=0.05
d2=0.025
a1=3.142*d1*d1/4
a2=3.142*d2*d2/4
Cd=0.94
g=9.81
k=((((a1^2)/(a2^2))-1)*(1-(Cd^2)))/(2*g*(a1^2)*(Cd^2))
disp(k,"venturimeter constant m-5/s2")
