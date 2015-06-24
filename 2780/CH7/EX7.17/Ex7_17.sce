clc
//to calculate time required for the atomic system 
//delE=h*c*dellambda/lambda^2 -----eq(1)
//delE*delt=h/2*%pi----------eq(2)
dellambda=10^-14
c=3*10^8
lambda=6*10^-7
//from eq(1)and eq(2),we get
delt=(lambda^2)/(2*%pi*c*dellambda)
disp("time required for the atomic system to retain rotational energy is delt="+string(delt)+"s")
