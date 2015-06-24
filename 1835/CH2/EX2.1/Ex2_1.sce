//CHAPTER 2 ILLUSRTATION 1 PAGE NO 57
//TITLE:TRANSMISSION OF MOTION AND POWER BY BELTS AND PULLEYS
clc
clear
//===========================================================================================
//INPUT DATA
Na=300;//driving shaft running speed in rpm
Nb=400;//driven shaft running speed in rpm
Da=60;//diameter of driving shaft in mm
t=.8;//belt thickness in mm
s=.05;//slip in percentage(5%)
//==========================================================================================
//calculation
Db=(Da*Na)/Nb;//finding out the diameter of driven shaft without considering the thickness of belt
Db1=(((Da+t)*Na)/Nb)-t///considering the thickness
Db2=(1-s)*(Da+t)*(Na/Nb)-t//considering slip also
//=========================================================================================
//output
printf('the value of Db is %3.0f cm',Db)
printf('\nthe value of Db1 is %f cm',Db1)
printf('\nthe value of Db2 is %f cm',Db2)
