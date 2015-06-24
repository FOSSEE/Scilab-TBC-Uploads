//Exa 1.22
clc;
clear;
close;
//given data
format('v',7);
Ecoil=8000;//in Volts
Icoil=418;//in Ampere
pf=80;//in % lgging
pf=pf/100;//in fraction
cos_fi=pf;//unitless
//Part (i) : 
EL=sqrt(3)*Ecoil;//in volt
disp(EL,"Line volts(in V): ");
//Part (ii) : 
IL=Icoil;//in Ampere
disp(IL,"Line Current in Ampere : ");
//Part (iii) :
Rating=sqrt(3)*EL*IL/1000;//in KVA
disp(Rating,"Rating (in KVA) :");
//Part (iv) :
FullLoadPower=sqrt(3)*EL*IL*cos_fi/1000;//in KW
disp(FullLoadPower,"Full Load Power in KW :");