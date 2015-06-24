// problem 8.8
V=25
u=10
q=0.001
g=9.81
p1=1000
w=g*p1
x=180
u1=8
F1=(w*q/g)*V*(1-cosd(x))
F2=(w*q*((V-u)^2)*(1-cosd(x)))/(g*V)
F3=(w*q*(V-u1)*(1-cosd(x)))/g
disp(F3,F2,F1,"force of jet in N when,the cup is stationary,the cup is moving with velocity of 10m/sec,series of cup with velocity of 8m/sec")
