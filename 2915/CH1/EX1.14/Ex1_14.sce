clc,clear
//Example 1.14
//To estimate radius of earth when angle of depression is known

angle_dep = 2.23 //angle of depression in degrees
//In the figure,
//r is the radius of earth
//A represent the top of the mountain
//H be the ocean horizon in the line of sight from A
//O be the center of the earth
//B is a point on the horizontal line of sight from A

angle_OAH = 90 - angle_dep ;
theta = 180 - 90 - angle_OAH ;
height=3 //height of mountain
//r is radius of earth to be determined

//distance from top of mountain from centre = r + height
// cosd(theta)= r/r+height...solving further
r = height*cosd(theta)/(1-cosd(theta)) ;
printf('Radius of earth as calculated = %.1f miles\n',r)
