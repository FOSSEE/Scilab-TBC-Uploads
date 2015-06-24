// problem 2.15
w=450000
y=5.5
w1=80*1000000
q=3
gm=(w*y)/(w1*tand(q))
p=12.5*1000
n=120
T=(p*60000)/(2*3.142*n)
z=T/(w1*gm)
theta=atand(z)
disp(theta,"angle of heel in degree")
