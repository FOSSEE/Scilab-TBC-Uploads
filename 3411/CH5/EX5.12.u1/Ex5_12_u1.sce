//Example 5_12_u1
clc();
clear;
//To determine the cubic structure of element and lattice constant and to identify element
//Diffraction data
theta21=40        //units in degrees
theta22=58        //units in degrees
theta23=73        //units in degrees
theta24=86.8        //units in degrees
theta25=100.4        //units in degrees
theta26=114.7        //units in degrees
theta1=theta21/2      //units in degrees
theta2=theta22/2      //units in degrees
theta3=theta23/2      //units in degrees
theta4=theta24/2      //units in degrees
theta5=theta25/2      //units in degrees
theta6=theta26/2      //units in degrees
//sin^2(theta) values
sin1=(sin(theta1*%pi/180))^2
sin2=(sin(theta2*%pi/180))^2
sin3=(sin(theta3*%pi/180))^2
sin4=(sin(theta4*%pi/180))^2
sin5=(sin(theta5*%pi/180))^2
sin6=(sin(theta6*%pi/180))^2
//sin^2(theta)/0.111 value
temp1=sin1/sin1
temp2=sin2/sin1
temp3=sin3/sin1
temp4=sin4/sin1
temp5=sin5/sin1
temp6=sin6/sin1
//(h,k,l) values are determined such that the sum h^2+k^2+l^2=temp value in that manner hence we have to select the (h,k,l) values
//(h,k,l) values
hkl1=100    //As h^2+k^2+l^2=1
hkl2=110    //As h^2+k^2+l^2=2
hkl3=111    //As h^2+k^2+l^2=3
hkl4=200     //As h^2+k^2+l^2=4
hkl5=210       //As h^2+k^2+l^2=5
hkl6=211       //As h^2+k^2+l^2=6
printf("unit cell Dimensions when 2*theta=%.1f is (%d) where sin^2(theta)/0.0111 is %d\n",theta21,hkl1,temp1 )
printf("unit cell Dimensions when 2*theta=%.1f is (%d) where sin^2(theta)/0.0111 is %d\n",theta22,hkl2,temp2 )
printf("unit cell Dimensions when 2*theta=%.1f is (%d) where sin^2(theta)/0.0111 is %d\n",theta23,hkl3,temp3 )
printf("unit cell Dimensions when 2*theta=%.1f is (%d) where sin^2(theta)/0.0111 is %d\n",theta24,hkl4,temp4 )
printf("unit cell Dimensions when 2*theta=%.1f is (%d) where sin^2(theta)/0.0111 is%d\n",theta25,hkl5,temp5 )
printf("unit cell Dimensions when 2*theta=%.1f is (%d) where sin^2(theta)/0.0111 is %d\n",theta26,hkl6,temp6 )

ratio=sin1/sin2
printf("The ratio of sin(theta)^2 values for first and second angles is %.2f\n Hence the crystal structure is bcc\n",ratio)
lamda=0.154   //units in nm
//As we have used ratio of angles of  2*theta=40 degrees and 58 degrees above we use h=1,k=1,l=0 and a^2=(lamda/2)*sqrt(sqrt(h^2+k^2+l^2)/sin^2(theta))
h=2
k=0
l=0
theta=20       //units in degrees
a=(lamda/2)*(sqrt(sqrt(h^2+k^2+l^2)/sin(theta*(%pi/180))^2))           //units in nm
printf("Lattice constant a=%.3fnm \n And the element is tungsten Since Tungsten has lattice constant of %.3fnm and crystallizes in bcc structure",a,a)
//Given in textbook to find  lattice constant h=1,k=1,l=1 but the correct answer is h=2,k=0,l=0
