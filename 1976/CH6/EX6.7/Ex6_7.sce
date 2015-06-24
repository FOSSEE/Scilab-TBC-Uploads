
//To determine the illumination over a disc
//Page 330
clc;
clear;

MSCP=300;                         //Uniform intensity of the lamp or Mean Spherical candle power
Vd=6;                             //Vertical distance of the lamp from the disc
R=6/2;                            //Radius of the disc
Reff=60/100;                      //Reflector efficiency
D=sqrt((Vd^2)+(R^2));             //Distance from the source to the edge of the disc
theta=atand(R/Vd);                //Angle made between D and Vd

Ecwr=MSCP/(Vd^2);                 //Illumination at the centre without reflector
Eewr=(MSCP/(D^2))*cosd(theta);    //Illumination at the edge without reflector

//Illumination at the centre is equal to the illumination at the egde with a reflector
Eer=MSCP*Reff*(4*%pi/(%pi*(R^2)));
Ecr=Eer;

w=2*%pi*(1-cosd(theta));          //Solid angle made by the surface
flux=MSCP*w;                      //Total flux produced by the source
Eavg=flux/(%pi*(R^2));            //Average illumination

printf('The illumination at:\n')
printf('a) At the centre:\n')
printf('i) With reflector : %g lux\n',Ecr)
printf('ii)Without reflector : %g lux\n',Ecwr)
printf('b) At the edge of the surface:\n')
printf('i) With reflector : %g lux\n',Eer)
printf('ii)Without reflector : %g lux\n',Eewr)
printf('c) Average illumination over the disc without the reflector : %g lux\n',Eavg)

