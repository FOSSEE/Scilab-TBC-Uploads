clc,clear
//Example 4.13
//To determine area of intersection of 2 circles

d=7 //distance between centres in cm
r1= 5 //radius of first circle in cm
r2= 4 //radius of second circle in cm

//use  law of cosines
cos_alpha=(d^2+ r1^2 - r2^2 ) /(2*d*r1)
cos_beeta=(d^2+ r2^2 - r1^2 ) /(2*d*r2)

//from the geometry of the figure 
//all the angles below are in radians
alpha= acos(cos_alpha)
beeta= acos(cos_beeta)
angle_BAC = alpha
angle_ABC = beeta
angle_CAD =2* angle_BAC
angle_CBD =2* angle_ABC

//required area = area at segment CD in circle at A and at B
area_K = r1^2*(angle_CAD-sin(angle_CAD))/2   + r2^2*(angle_CBD-sin(angle_CBD))/2   
printf('Area of intersection of 2 circles = %.2f cm^2',area_K)
