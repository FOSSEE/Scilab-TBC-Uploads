
//Variable declaration
lamda=0.675;    //wavelength(angstrom)
n=3;    //order of diffraction
theta=5+(25/60);    //angle(degrees)

//Calculation
theta=theta*%pi/180;    //angle(radian)
d=lamda/(2*sin(theta));   
theta3=asin(3*lamda/(2*d));    //glancing angle(radian)
theta3=theta3*180/%pi;    //glancing angle(degrees)
theta_d=int(theta3);       
theta_m=(theta3-theta_d)*60;

//Result
printf('glancing angle is %0.3f    degrees %0.3f  minutes \n',theta_d,int(theta_m))
printf('glancing angle is %2d degrees %2d minutes ',theta_d,int(theta_m))
printf('answer varies due to approximating off errors\n')