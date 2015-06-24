//Caption:Combination of component errors in overall system-accuracy calculations
//example2
//page 62
clc;
//Consider an experiment for measuring, by means of a dynamometer, the average power transmitted by a rotating sheft
disp("R=1202 ")
disp("F=45")
disp("L=0.397 ")
disp("t=60")
R=1202  //('Enter the revolutions of shaft during time t=:')
F=45  //('Enter the force at end oftorque arm=:')
L=0.397 //('Enter the length of torque arm=:')
t=60  //('Enter the time length of run=:')
W=(2*%pi*R*F*L)/t;
//Computing various partial dervatives
dWF=(2*%pi*R*L)/t; 
disp(dWF)   //dWF represents dW/dF
dWR=(2*%pi*F*L)/t;
dWL=(2*%pi*F*R)/t;
dWt=-(2*%pi*R*F*L)/(t^2);
//Let f, r, l and t represent the uncertainties
disp("f=0.18")
disp("r=1 ")
disp("l=0.00127 ")
disp("t=0.5")
disp("Ea=(dWF*f)+(dWR*r)+(dWL*l)+abs(dWt*t); ")
f=0.18   //('Enter the uncertainty in force=:')
r=1  //('Enter the uncertainty in the no of revolutions=:')
l=0.00127   //('Enter the uncertainty in the length=:')
t=0.5  //('Enter the uncertainty in the time length of run=:')
Ea=(dWF*f)+(dWR*r)+(dWL*l)+abs(dWt*t);      //absolute error
printf("The absolute error is  ")
disp(Ea);
//To find total uncertainty
U=(((dWF*f)^2)+(dWR*r)^2+(dWL*l)^2+abs(dWt*t)^2)^0.5
printf("Total uncertainty is ")
disp(U)

