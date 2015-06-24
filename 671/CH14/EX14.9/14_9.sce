
f=8E6
w=2*%pi*f
C=150E-12
R=5

Q1=1/w/C/R

Rins=0.1
Q2=1/w/C/(R+Rins)
err=(Q1-Q2)/Q1*100
disp(err)
