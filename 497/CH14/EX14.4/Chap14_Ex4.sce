//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-14, Example 4, Page 352
//Title: Wide Size Distribution of Shrinking Particle
//==========================================================================================================

clear
clc

//INPUT
dpi=[1.05;0.95;0.85;0.75;0.65;0.55;0.45;0.35;0.25;0.15;0.05];//Mean size in mm
Fo=[0;0.5;3.5;8.8;13.5;17.0;18.2;17.0;13.5;7.3;0]*10^-2;//Feed rate in kg/s
k=[0;0;0;0;0;0;0;0;2.0;12.5;62.5]*10^-5;//Elutriation constant in s^-1
R=-1.58*10^-5;//Rate of particle shrinkage in mm/s
deldpi=0.1;//Size intervals in mm

//CALCULATION
n=length(dpi);
m=2;//Starting with the largest value size interval that contains solids
W(m-1)=0;
while m<=n
    W(m)=(Fo(m)-R*W(m-1)/deldpi)/(k(m)-R/deldpi-3*R/dpi(m));//From Eqn.(33)
    m=m+1;
end
Wt=sum(W);//Total sum

//OUTPUT
printf('\nTotal mass in the bed:%fkg',Wt);

//====================================END OF PROGRAM ======================================================