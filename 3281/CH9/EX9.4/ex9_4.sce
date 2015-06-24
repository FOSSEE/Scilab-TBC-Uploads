//Page Number: 454
//Example 9.4
clc;
//Given
S11=0.89;
S12=0.02;
S21=3.1;
S22=0.78;

del=(S11*S22)-(S12*S21);
K=[1-(S11)^2-(S22)^2+(del)^2;]/(2*S12*S21);
if(K<1)
    disp('Amplifier is potentially unstable');
else
     disp('Amplifier is potentially stable');
     end
    
