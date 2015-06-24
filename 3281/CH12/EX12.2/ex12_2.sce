//Page Number: 650
//Example 12.2
clc;
//Given
vswr=4;

modT=(vswr-1)/(vswr+1);
Lm=-10*log10(1-(modT*modT)); //dB
disp('dB',Lm,'Mismatch Loss:');

//Sensitivity reduces by a factor
Bvd=(1-(modT*modT));
Bvdp=Bvd*100;
disp('%',Bvdp,'Voltge sensitivity reduces by:');



