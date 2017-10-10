clc;funcprot(0);//EXAMPLE 8.6
// Initialisation of Variables
t0=5;.......//Assming we are able to purchase only 5-cm thick stock
t02=1;......//Thickness of strip in cm
tf=0.182;......//Final thickness of strip in cm
%CW2=80;.......//cold work  of a strip in percent
M=1085;.......// The melting point of copper in degree celsius
//CALCULATIONS
%CW=((t0-tf)/t0)*100;.......//Cold work between from 5 to 0.182 cm in percent
tf2=(1-(%CW2/100))*t0;.....// Final Thickness of strip in cm
Tr=0.4*(M+273);...// Recrystallization temperature By using 0.4Tm relationship in degree celsius
%CW3=((t02-tf)/t02)*100;.....//Cold work of the strip of 1 cm thickness 
disp(%CW,"Cold work between from 5 to 0.182 cm in percent:")
disp(tf2,"1. Final Thickness of strip in cm")
disp(Tr-273,"2. Recrystallization temperature By using 0.4Tm relationship in degree celsius:")
disp(%CW3,"3.  Cold work of the strip of 1 cm thickness :")
