//Example 5_32
clc();
clear;
//To find the plane which gives reflection
D=0.228  //units in nm
lamda=0.154  //units in nm
hkl=((2*D)/((lamda/2)*sqrt(3)))^2
printf("Tha maximum value that is possible for h^2+k^2+l^2=%.2f so (h,k,l) values are (2,2,2)",hkl)
//In text book answer printed wrong as 13.98 correct answer is 11.69
