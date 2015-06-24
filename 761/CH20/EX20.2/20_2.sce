clc;
// page no 757
// prob no 20.2
R=6400;//Radius of earth
L=45;//earth station lattitude
H=36000//Height of satellite above the  earth;
ang=atand((6400*sind(45))/(36000+(6400*(1-cosd(45)))));
disp(ang);