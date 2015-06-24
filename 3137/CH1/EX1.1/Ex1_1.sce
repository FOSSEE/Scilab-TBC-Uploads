//Initialisation of Variables
f1=120 //lb
f2=100 //lb
theta=((60*%pi)/180) //radians
//Calculations
R=sqrt(120^2+100^2-(2*120*100*cos(theta))) //Applying Thr rule of Cosines
alpha1=(((asin(120*sin(theta)/111))*180)/%pi) //Applying the Law of Sines
alpha=alpha1+270 //As the vector lies in the fourth Quadrant by obsrevaton
//Results
clc
printf('The Resultant of The force system is equal to:%f N\n ',R ) //lb
printf('The Resultant is at:%f degrees',alpha) //degrees

