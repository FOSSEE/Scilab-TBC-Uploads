//calculating the required data//
//example 2//
clc
//clears the command window//
clear
//clears// 
n=4;
WLSB1=1/(2^4-1);//weight assigned to LSB//
printf('weight assigned to LSB=%f\n',WLSB1)
WLSB2=2*WLSB1;//weight assigned to 2nd LSB//
printf('weight assigned to second LSB=%f\n',WLSB2)
WLSB3=4*WLSB1;//weight assigned to 3rd LSB//
printf('weight assigned to 3rd LSB=%f\n',WLSB3)
//high level 1=10V//
V1=10*WLSB1;//change in output voltage due to change in LSB//
V2=10*8/15;//change in output voltage due to change in MSB//
printf('change in output voltage due to change in LSB=%f volt\n',V1)
printf('change in output voltage due to change in MSB=%f volt\n',V2)
//results are displayed//
disp('Vo1=(20/R+40/R+80/R)/(1/R+2/R+4/R+8/R)')
Vo1=140/15;
printf('output voltage for input 1110=%f volt\n',Vo1) 
disp('Vo2=(10/R+40/R+80/R)/(1/R+2/R+4/R+8/R)')
Vo2=130/15;
printf('output voltage for input 1101=%f volt',Vo2) 
//results are displayed//
