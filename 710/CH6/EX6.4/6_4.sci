clc();
clear;
//To compare the intensities of ordinary & extraordinary light
//IE=A^2(cos^2(teta));IO=A^2(sin^2(teta))
//I0/IE=tan^2(teta)
teta=40;                      //angle made between incident beam & optic axis
a=tand(40)^2                  //I0/IE
printf("I0/IE=%f",a);