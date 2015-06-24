//=======================================================================
// chapter 7 example 16


clc;
clear;

//input data
 u          = 100;              //amplification factor 
 rd         = 33*10^3;          //drain resistance  in ohms


//calculation
gm          = u/rd;         //transconductance in mhos

//result
 mprintf('transconductance =%3.2f mmhos\n',gm/10^-3);
 printf('Note:transconductance value is wrongly printed in terms of umhos');

//=========================================================================
