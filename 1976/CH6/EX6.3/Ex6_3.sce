
//To calculate Spherical Candle Power and intensity of illumination
//Page 327
clc;
clear;

Tf= 1500;                                   //Total flux
D=3                                         //Distance from the source
CP=200;                                     //Candle power of the Uniform Source
E=CP/(D^2);                                 //Maximum Illumination Intensity
deff('y=IntIllumi(x)','y=E*sind(x)');       //Function to determine the intensity of iluumination for various conditions


MSCP=Tf/(4*%pi);                            //The Mean spherical candle power

//Various Angles at which the rays falls on the surface
t1=90;
t2=60;
t3=0;

//Illumination Intensities at various angles
E1=IntIllumi(t1);
E2=IntIllumi(t2);
E3=IntIllumi(t3);

printf('a)The Mean Spherical Candle Power is %g c.p\n',MSCP)
printf('b The illumination intensities for the following cases are: \n')
printf('i)   Normal : %g lux\n',E1)
printf('ii)  Inclined at 60 degrees : %g lux\n',E2)
printf('iii) Parallel : %g lux\n',E3)

