clc
//to calculate relative intensities
//Imax/Imin=(a1+a2)^2/(a1-a2)^2+105/95
//(a1+a2)/(a1-a2)=1.051
//we get a1/a2=40 
a1=40 //a1=40*a2
a2=1
disp("the ratio of the intensities of interfering sources is I1/I2=a1^2/a2^2="+string(a1^2/a2^2)+"unitless")
//answer is given in terms of ratio in the book
