///Chapter 9 Law Of Thermodynamics
///Example 9.2 Page No:166
///Find Quantity of heat transferred 
///Input data
clc;
clear;
                      //During compression
W1=-9200;              //Stroke work done by the piston in Nm
Nm1=-9.2;              //Nm of work done
Q1=-50;                //Heat rejected during copression in KJ
                      //During expansion
W2=8400;               //Stroke work done by the piston in Nm
Nm2=8.4;               //Nm of work done

///Calculation;
                      //Quantity of heat transferred
Q2=-((Nm1+Nm2)+Q1);    //-sign for indicate heat is transferred


///Output
printf('Quantity of heat transferred= %f KJ \n',Q2);
