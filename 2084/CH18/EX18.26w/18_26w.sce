//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 18.26w
//calculation of new position of the slide of projector if the position of the screen is changed

//given data
v=10; //image distance(in m)
m=500; //lateral magnification ratio
d=2; //distance(in m) the screen is moved

//calculation
u=-v/m; //lateral magnification formula
f=1/((1/v)-(1/u)) //lens formula
vdash=v-d //effect of moving screen d m closer
udash=1/((1/vdash)-(1/f)) //lens formula

if(udash<0)
    disp(-udash,'away from the lens,the slide should be moved by a distance(in m) of');
else
    disp(udash,'towards the lens,the slide should be moved by a distance(in m) of');
end



