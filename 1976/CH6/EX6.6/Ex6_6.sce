
//To determine illumination at a point when a mirror is used
//Page 330
clc;
clear;

CP=500;                  //Candle power of the lamp
Vd=5;                    //Vertical distance from the point to the source
Hd=5;                    //Horizontal distance fron the point to the source
D=sqrt((Vd^2)+(Hd^2));   //Distance between the source and the point
Md=2;                    //Distance of the source from the mirror
theta=atand(Hd/Vd);      //Angle made between the source to point and the horizontal

//Lets consider the mirror reflection
R=80/100;                //Reflected rays ratio
Vdm=Vd+(2*Md)            //Vertical Distance from the point to the source reflection
Hdm=Hd;                  //Horizontal distance from the point to the source reflection
Dm=sqrt((Vdm^2)+(Hdm^2));//Distance between the source reflection and the point
thetam=atand(Hdm/Vdm);   //Angle made between the source reflection to point and the horizontal

//Illumination at A due to source
Es=(CP/(D^2))*cosd(theta);

//Illumination at A due to source refelction
Er=(R*CP/(Dm^2))*cosd(thetam);

//Total Illumination at point A
E=Er+Es;

printf('The total illumination at point A is %g lux.\n',E)
