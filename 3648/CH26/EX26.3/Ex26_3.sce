//Example 26_3
clc();
clear;
//To draw the energy level diagram and the find the first line of balmer type series
n=1
e1=-54.4/n^2    //units in ev
n=2
e2=-54.4/n^2    //units in ev
n=3
e3=-54.4/n^2    //units in ev
printf("The energy associated with line 1 is E1=%.1f eV\nThe energy associated with line 2 is E2=%.1f eV\nThe energy associated with line 3 is E3=%.2f eV\n",e1,e2,e3)
e1=1     //units in eV
e2=7.6     //Units in eV
lamda1=1240       //units in nm
lamda=(e1/e2)*lamda1      //Units in nm
printf("The first line of balmer series is lamda=%d nm and belongs to the ultraviolet region",lamda)
