//CHAPTER 2,ILLUSRTATION 2 PAGE NO 57
//TITLE:TRANSMISSION OF MOTION AND POWER BY BELTS AND PULLEYS
clc
clear
//====================================================================================
//input
n1=1200//rpm of motor shaft
d1=40//diameter of motor pulley in cm
d2=70//diameter of 1st pulley on the shaft in cm
s=.03//percentage slip(3%)
d3=45//diameter of 2nd pulley
d4=65//diameter of the pulley on the counnter shaft
//=========================================================================================
//calculation
n2=n1*d1*(1-s)/d2//rpm of driven shaft
n3=n2//both the pulleys are mounted on the same shaft
n4=n3*(1-s)*d3/d4//rpm of counter shaft

//output
printf('the speed of driven shaft is %f rpm\nthe speed of counter shaft is %f rpm',n2,n4)
