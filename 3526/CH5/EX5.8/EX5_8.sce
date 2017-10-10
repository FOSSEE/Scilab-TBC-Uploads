clc;funcprot(0);//EXAMPLE 5.8
// Initialisation of Variables
H=10;.......//Required time to successfully carburize a batch of 500 steel gears
t1=1173;......//Temperature at carburizing a batch of   500 steel gears in K
t2=1273;.......//Temperature at carburizing a batch of   500 steel gears in K
Q=32900;.........//The activation energy for diffusion  of BCC steel
R=1.987;.........//Gas constant in cal/mol.K
c1=1000;......//cost per hour to operate the carburizing furnace at 900degree centigrades
c2=1500;......//Cost per hour to operate the carburizing furnace at 1000 degree centigrade
H2=(exp(-Q /(R*t1))*H*3600)/exp(-Q /(R*t2));.......// Time requried to  successfully carburize a batch of 500 steel gears at 1000 degree centigrade
Cp1=c1*H/500;.......//The cost per Part of steel rods  at 900 degree centigrade
Cv=(c2*3.299)/500;.......//The cost per Part of steel rods  at 1000 degree centigrade
disp(H2/3600,"Time requried to  successfully carburize a batch of 500 steel gears at 1000 degree centigrade:")
disp(Cp1,"The cost of carburizing per Part of steel rods  at 900 degree centigrade")
disp(Cv,"The cost of carburizing per Part of steel rods  at 1000 degree centigrade")
