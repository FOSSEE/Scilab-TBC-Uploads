clc
B= 0.997
disp("B= "+string(B)) //initializing value of base transport factor
Db = 10
disp("Db= "+string(Db)+"cm^2/s")//initializing value of diffusion coefficient in the base
Tb = 10^-6
disp("Tb= "+string(Tb)+"s")//inializing value of electron lifetime
Lb = sqrt(Db*Tb)
disp("The electron carrier diffusion length is,Lb = sqrt(Db*Tb)= "+string(Lb)+"cm")//calculation
// assume the neutral basewidth Wbn is equal to actual basewidth Wb
Wbn = sqrt((1-B)*(2*(Lb^2)))
disp("The base width is,Wb = sqrt((1-B)*(2*(Lb^2)))= "+string(Wbn)+"cm")//calculation
// Note : due to different precisions taken by me and the author ... my answer differ 
