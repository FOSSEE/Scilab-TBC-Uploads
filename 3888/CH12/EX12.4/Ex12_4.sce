//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 12.4
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


V4=12;                                //Rated voltage of each unit in kV
m=10;                                 //Mutual capacitance of unit 
n=4;                                  //No of string units
V1=V4/1.651;                          //Voltage across the topmost unit in kV
V2=1.1*V1;                            //Voltage across the second unit from the top in kV
V3=1.31*V1;                           //Voltage across the third unit from the top in kV
V_tot=V1+V2+V3+V4;                    //Total voltage Voltage across the string in kV
mlv=3^(1/2)*V_tot;                    //Maximum line voltage in kV
str_eff=(V_tot/(n*V4))*100;           //String efficiency in percentage


printf("\nSafe operating maximum line voltage is %.2f kV",mlv);
printf("\nThe string efficiency is %.2f percentage",str_eff);
