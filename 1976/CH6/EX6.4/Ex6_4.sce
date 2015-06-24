
//To determine average illumination and illumination at various points on the area
//Page 328
clc;
clear;

CP=200;                 //Candle power of the lamp
D=4;                    //Vertical Distance from the centre of the area to the lamp
R=5/2;                  //Radius of the given area
De=sqrt((D^2)+((R)^2));   //Distance from the edge of the area
Reff=80/100;            //Reflector Efficiency

Ec= CP/(D^2);           //Illumination at the centre of the area
theta= acosd(D/De);     //Angle made between perpendicular and edge distances
w=2*%pi*(1-cosd(theta));//Solid angle subtended by the area

//Assuming uniform intensity in all directions

//Illumination at the edge is
Eue=(CP/(De^2))*cosd(theta);
//Flux is given by Iw
flux=CP*w;
//Average illumination
Euavg= flux/(%pi*(R^2));
//Average illumination with reflector efficiency
Euavgr= Euavg*Reff;

//When candle power is only vertically downwards
Eve=Eue*cosd(theta);    //Illumination at the edge of the area

//Total flux equation for non uniform intensity is derived and given by 2*pi*I*(sec(theta)-1)
fluxn=2*%pi*CP*(secd(theta)-1);
//Average illumination
Enuavg= fluxn/(%pi*(R^2));
//Average illumination with reflector efficiency
Enuavgr= Enuavg*Reff;

printf('The illumination at the \n')
printf('i) Centre of area = %g lux\n',Ec)
printf('ii)Periphery of the area \n')
printf('a) Uniform illumination = %g lux\n',Eue)
printf('b) Candle power is vertically downward = %g lux\n',Eve)
printf('iii) Average illumination and Average illumination with reflector efficiency\n')
printf('a) Uniform intensity = %g lux and %g lux respectively.\n',Euavg,Euavgr)
printf('b) Non Uniform intensity = %g lux and %g lux respectively.\n',Enuavg,Enuavgr)

