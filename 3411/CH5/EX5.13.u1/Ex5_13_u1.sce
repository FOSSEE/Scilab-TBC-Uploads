//Example 5_13_u1
clc();
clear;
//To determine the crystal structure and indices of plane and lattice parameter of the material
theta21=20.7        //units in degrees
theta22=28.72        //units in degrees
theta23=35.36        //units in degrees
theta24=41.07        //units in degrees
theta25=46.19        //units in degrees
theta26=50.90        //units in degrees
theta28=55.28        //units in degrees
theta29=59.4        //units in degrees

theta1=theta21/2      //units in degrees
theta2=theta22/2      //units in degrees
theta3=theta23/2      //units in degrees
theta4=theta24/2      //units in degrees
theta5=theta25/2      //units in degrees
theta6=theta26/2      //units in degrees
theta8=theta28/2      //units in degrees
theta9=theta29/2      //units in degrees
//sin^2(theta) values
sin1=(sin(theta1*%pi/180))^2
sin2=(sin(theta2*%pi/180))^2
sin3=(sin(theta3*%pi/180))^2
sin4=(sin(theta4*%pi/180))^2
sin5=(sin(theta5*%pi/180))^2
sin6=(sin(theta6*%pi/180))^2
sin8=(sin(theta8*%pi/180))^2
sin9=(sin(theta9*%pi/180))^2
//sin^2(theta)/0.0308 values
temp1=sin1/sin1
temp2=sin2/sin1
temp3=sin3/sin1
temp4=sin4/sin1
temp5=sin5/sin1
temp6=sin6/sin1
temp8=sin8/sin1
temp9=sin9/sin1

h2k2l21=temp1*2

h2k2l22=temp2*2
h2k2l23=temp3*2  
h2k2l24=temp4*2
h2k2l25=temp5*2
h2k2l26=temp6*2
h2k2l28=temp8*2
h2k2l29=temp9*2
//(h,k,l) values are determined such that the sum h^2+k^2+l^2=temp value in that manner hence we have to select the (h,k,l) values
//(h,k,l) values
hkl1=110       //As h^2+k^2+l^2=2
hkl2=200       //As h^2+k^2+l^2=4
hkl3=211       //As h^2+k^2+l^2=6
hkl4=220       //As h^2+k^2+l^2=8
hkl5=310       //As h^2+k^2+l^2=10
hkl6=232       //As h^2+k^2+l^2=12
hkl8=321               //As h^2+k^2+l^2=14
hkl9=400       //As h^2+k^2+l^2=16

printf("unit cell Dimensions for peak 1 when 2*theta=%.1f is (%d) where sin^2(theta)/0.0308 is %.2f\n",theta21,hkl1,ceil(h2k2l21) )
printf("unit cell Dimensions for peak 2 when 2*theta=%.1f is (%d) where sin^2(theta)/0.0308 is %.2f\n",theta22,hkl2,ceil(h2k2l22) )
printf("unit cell Dimensions for peak 3 when 2*theta=%.1f is (%d) where sin^2(theta)/0.0308 is%.2f\n",theta23,hkl3,ceil(h2k2l23))
printf("unit cell Dimensions for peak 4 when 2*theta=%.1f is (%d) where sin^2(theta)/0.0308 is %.2f\n",theta24,hkl4,ceil(h2k2l24))
printf("unit cell Dimensions for peak 5 when 2*theta=%.1f is (%d) where sin^2(theta)/0.0308 is%.2f\n",theta25,hkl5,ceil(h2k2l25))
printf("unit cell Dimensions for peak 6 when 2*theta=%.1f is (%d) where sin^2(theta)/0.0308 is%.2f\n",theta26,hkl6,ceil(h2k2l26))
printf("unit cell Dimensions for peak 7 when 2*theta=%.1f is (%d) where sin^2(theta)/0.0308 is %.2f\n",theta28,hkl8,ceil(h2k2l28))
printf("unit cell Dimensions for peak 8 when 2*theta=%.1f is (%d) where sin^2(theta)/0.0308 is %.2f\n",theta29,hkl9,ceil(h2k2l29))

printf("The material corresonds to bcc structure\n") 
//Consider peak no 8 where theta=29.71
lamda=0.07107       //units in nm
d400=lamda/(2*sin(theta9*(%pi/180)))         //units in nm
a=d400*sqrt(ceil(h2k2l29))         //units in nm
printf("Lattice parameter of the material a=%.4fnm",a)
