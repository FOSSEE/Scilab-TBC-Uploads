clc;
//page no 8-19
//Example 8.6
//Given
fsmin=530;//in kHz
fsmax=1650;//in kHz
IF=455;//in kHz
disp("For fo>fs");
fomin=fsmin+IF;
fomax=fsmax+IF;
disp(+'kHz',fomin,'fomin=');
disp(+'kHz',fomax,'fomax=');
TR=(fomax/fomin)^2;
disp(TR,'Comax/Comin=');
disp("Therfore, tuning range for oscillator capacitor is 4.567:1");
disp("For fo<fs");
fomin1=fsmin-IF;
fomax1=fsmax-IF;
disp(+'kHz',fomin1,'fomin=');
disp(+'kHz',fomax1,'fomax=');
TR1=(fomax1/fomin1)^2;
disp(TR1,'Comax/Comin=');
disp("Therfore, tuning range for oscillator capacitor is 253.87:1");
