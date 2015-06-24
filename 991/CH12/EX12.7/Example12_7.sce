//Example 12.7.
clc
format(6)
thetaH=8
TA=40
TJ=160
thetaJ=5
thetaC=85
x1=(thetaC*thetaH)/(thetaC+thetaH)
theta=thetaJ+x1
disp(theta,"    theta_J-A(degree C/W) = theta_J-C + theta_C-A || theta_HS-A =")
PD=(TJ-TA)/theta
format(5)
disp(PD,"    PD(W) = TJ-TA / theta_J-A =")