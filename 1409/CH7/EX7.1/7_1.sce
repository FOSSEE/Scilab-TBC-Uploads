clc;
//page no 7-17
//Example 7.1
//Given
fc=15;//in MHz
fd=10;//in kHz
fo=45;//in MHz
//At point 1 in Fig 7.16
fc1=4*fc;
fd1=4*fd;
fmax1=fc1+(fd1*10^(-3));
fmin1=fc1-(fd1*10^(-3));
disp(+'MHz',fc1,'Carrier frequency at point 1 is');
disp(+'kHz',fd1,'frequency deviation at point 1 is');
disp(+'MHz',fmax1,'fmax=');
disp(+'MHz',fmin1,'fmin=');
//At point 2, mixer gives difference frequency with fo=45MHz
fc2=fc1-fo;
fmax2=fmax1-fo;
fmin2=fmin1-fo;
fd2=(fc-fmin2)*10^3;
disp(+'MHz',fc2,'Carrier frequency at point 2 is');
disp(+'MHz',fmax2,'fmax=');
disp(+'MHz',fmin2,'fmin=');
disp(+'kHz',fd2,'Frequency deviation at point 2 is');
