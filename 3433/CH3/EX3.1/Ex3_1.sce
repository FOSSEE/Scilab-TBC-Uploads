clear;
clc;
funcprot(0);

//given data
alpha1 = 55;//flow inlet angle in deg
alpha2 = 30;//flow exit angle in deg
cmaxs_c2 = 1.95;//expected design value of the diffusion ratio
DF = 0.6;//diffusion factor

//Calculation
theta2_l = 0.004/(1-1.17*log(cmaxs_c2));
alpham = (180/%pi)*atan(0.5*(tan(alpha1*%pi/180)+tan(alpha2*%pi/180)));
CD = 2*(theta2_l)*((cos(alpham*%pi/180))^2)/((cos(alpha2*%pi/180))^2);
s_l_max = ((2*cos(alpha1*%pi/180)/cos(alpha2*%pi/180))-0.8)/(cos(alpha1*%pi/180) *(tan(alpha1*%pi/180)-tan(alpha2*%pi/180)));
CL = 2*s_l_max*cos(alpham*%pi/180)*(tan(alpha1*%pi/180)-tan(alpha2*%pi/180)) - CD*tan(alpham*%pi/180); 

//Results
printf('CD = %.5f\n CL = %.3f',CD,CL);
printf('\n The maximum allowable pitch–chord ratio = %.3f',s_l_max);

//there is some error in the answer given in textbook
