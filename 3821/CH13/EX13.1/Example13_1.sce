////Chapter 13  Steam Engines
////Example 13.1 Page No 281
///Find Therotical mean effective pressure
//Input data
clc;
clear;
Pa=10;                            //Single cylinder double acting steam engine pressure in bar 
Pb=1.5;                           //Single cylinder double acting steam engine pressure in bar
rc=100/35;                        //Cut-off of the stroke in %


//Calculation
Pm=((Pa/rc)*(1+log(rc))-Pb); //Therotical mean effective pressure

//Output
printf('Therotical mean effective pressure= %f bar \n',Pm);
