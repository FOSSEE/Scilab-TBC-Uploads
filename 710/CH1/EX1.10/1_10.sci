clc();
clear;
//To determine the thickness of the crystal 
f1=400;                          //Initial frequency in kHZ
f2=500;                         //New frequency
t1=3;                           // initial thickness of the crystal
t2=(f1*t1)/f2                  //required thickness
printf("The required thickness of the crystal is %f mm",t2 );
