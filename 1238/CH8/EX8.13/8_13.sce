//calculating maximum full scale voltage//
//example 13//
clc
//clears the command window//;
clear
//clears//
//digital input is 11111111//
//high input level=10V//
Vo=10*(1+2+4+8+16+32+64+128)/256;//output voltage//
printf('maximum full scale voltage=%f volt',Vo);//result displayed//

