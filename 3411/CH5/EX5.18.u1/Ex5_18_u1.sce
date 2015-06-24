//Example 5_18_u1
clc();
clear;
//To find out the planes which gives reflection 
lamda=0.154   //units in nm
theta=90             //units in degrees  as sin(theta) is maximum at 90 degrees
d=lamda/(2*sin(theta*%pi/180))      //units in nm
D=0.228          //units in nm
hkl=(2*D)/(d*sqrt(3))
hkl2=hkl^2
printf("As h^2+k^2+l^2=%.2f \n The highest possible values of (h,k,l) are (2,2,2) Hence (2,2,2) planes give reflection",hkl2)
//Given in text book h^2+k^2+l^2=13.98 but the answer is h^2+k^2+l^2=11.69
