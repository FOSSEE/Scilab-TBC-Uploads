//Page Number: 651
//Example 12.5
clc;
//Given
vswr=2;
Pin=4.5D-3; //W

modT=(vswr-1)/(vswr+1);
//Power reflected,
Pr=(modT^2)*Pin;
//As coupler samples only 1/1000th power
Prr=Pr*1000;
disp('W',Prr,'Reflected Power:');
