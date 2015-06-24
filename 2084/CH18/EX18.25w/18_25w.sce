//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 18.25w
//calculation of location of final image for an object on the axis of a cylindrical tube containing water closed by an equiconvex lens

//given data
u=-21; //object distance(in cm)
f=10; //focal length(in cm) of the lens
mu1=1; //refractive index of air
mu2=1.5; //refractive index of lens
mu3=1.33; //refractive index of water
//v1  image due to refraction at the first surface

//calculation
//from formula of refraction at the spherical surface
//(mu2/v1)-(1/u)=(mu2-mu1)/R            (1)
//(mu3/v)-(mu2/v1)=(mu3-mu2)/-R         (2)
//adding (1) and (2)
//(1/v)=(1/(2*R))-(1/28)                (3)
//f=1/((mu2-1)*(1/R+1/R)) refractive surfaces in cascade

R=2*f*(mu2-1) //refractive surfaces in cascade
v=1/((1/(2*R))-(1/28)) //from equation (3)

disp(v,'the image is formed inside the cylindrical tube at distance(in cm) of');

