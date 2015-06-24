clc,clear
//example 1.11
//To find the height of the flagpole

//conside the attached figure
d=150 //distance of person from flagpole in feet
angle_ele = 32 //angle of elevation in degree
height_eyes =6 //height of man's eyes
h= d*tand(angle_ele)
height_flagpole = height_eyes + h
printf('Required height of flagpole = %.0f ft',height_flagpole)
