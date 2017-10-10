////Chapter 13  Steam Engines
////Example 13.8 Page No 288
////Find Diagram factor
//Input data
clc;
clear;
P1=10;                  //Inlet pressure
Pb=1;                    //Back pressure
rc=3;                    //Expansion ratio
a=12.1;                  //Area of indicator diagram
b=7.5;                   //Length of indicator diagram 
S=3;                     //Pressure scale


//Calculation
Pm=round((P1/rc)*(1+log(rc))-Pb ); //Therotical mean effective pressure Pm
Pma=a/b*S;                        //Actual mean effective pressure Pma
K=Pma/Pm;                         //Diagram factor 

///Output
printf('Therotical mean effective pressure= %f bar \n',Pm);
printf('Actual mean effective pressure= %f bar \n',Pma);
printf('Diagram factor= %f \n',K);
