clc,clear
//Example 1.16
// To determine the radius of sun

angle_AEB =0 +(32/60)+ (4/60)/60//converting to degrees

//Triangle BES and AES are similar
//BS=AS as they are radius
//ES is common to both triangles
//angle_EBS=angle_ABS =90 as tangents are perpendicualar to radius
// angle_AES = angle_BES
angle_AES= angle_AEB /2;
angle_BES= angle_AEB /2;

//to find ditance from sun to centre of earth
//obtained from previous example
alpha = 0.00244; // equitorial paralalx in degree
OA = 3956.6 ;//radius of earth
angle_OAB = 90 ;//radius perpendicular to tangent
OB = OA / sind(alpha) ; 

//ES is from earth surface to sun centre
//centre of earth to sun is  OB
//we initially treated sun as point
//that ditance is distance between their centres
radius_earth=3956.6 ;//in miles
ES = OB - radius_earth ;//in miles
AS=ES * sind(angle_AES) ;//in miles
printf('Required radius of sun = %.0f miles \n',AS)
printf('Answer might vary due to approximations in book and scilab precision')
