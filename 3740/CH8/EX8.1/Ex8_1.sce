//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 8.1
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
n1=1.5;//Dimensionless refractive index of glass
n2=1;//Dimensionless refractive index of air
Theta_i=60;//Angle of incidence in degrees
Tan_Sai=sqrt(sind(Theta_i)^2-(n2/n1)^2)/(cosd(Theta_i))//Tan of phase shift in incident and reflected ray
Sai=atand(Tan_Sai)//phase shift in perpendicular component ofincident and reflected ray in degrees
delta=atand((n1/n2)^2*Tan_Sai)//phase shift in parallel component of incident and reflected ray in degrees


mprintf("\n phase shift in perpendicular component ofincident and reflected ray in degrees Sai= %f",Sai);
mprintf("\n\n phase shift in parallel component of incident and reflected ray in degrees Delta= %f",delta);
// the difference in answer is becoause of roundingoff
