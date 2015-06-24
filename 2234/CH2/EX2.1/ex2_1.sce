clc;
disp("Example 2.1");
v=3000;             //volume in metre cube.
theta=0.2;          //theta in owu(open window unit).
s=1850;             //area in metre cube.
as=theta*s;    //calculating total absorbtion of surface.
T=(0.165*v)/as //calculating T using Sabine formula
disp(T,"Reverberation time of Room = ");   //Displaying Result.
