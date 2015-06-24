Pl1=1500
f1=50
Pl2=3000
f2=75

Y=[1,f1;1,f2]
X=inv(Y)*[Pl1/f1;Pl2/f2]

Ph1=X(1)*f1
Pe1=X(2)*f1*f1
Ph2=X(1)*f2
Pe2=X(2)*f2*f2

disp(Ph1,Pe1,Ph2,Pe2)