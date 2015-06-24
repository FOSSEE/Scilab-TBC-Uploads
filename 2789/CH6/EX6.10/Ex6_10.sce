clear;
clc;

//page no. 199

P = 100;//hp
V = 75;//fps
V1 = 150;//fps
d = 2;//in
alpha1 = 60;//degrees

Q = 0.25*%pi*(d/12)^2 *V1;
F_y = 550*P/V;
V2 = sqrt(V1^2 - P*550/(Q*1.935/2));
alpha2 = (180/%pi)*asin((V1*sin(alpha1*%pi/180) - (F_y/(Q*1.935)))/V2);
beta1 = 90 - (180/%pi)*atan((V1*sin(alpha1*%pi/180) - V)/(V1*cos(alpha1*%pi/180)));
beta2 = 90 + (180/%pi)*atan((V-V2*sin(alpha2*%pi/180))/(V1*cos(alpha1*%pi/180)));

printf('Beta1 = %d degrees,\n Beta2 = %d degrees',beta1,beta2);


//there are small errors in the answer given in textbook
