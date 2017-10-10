clc;
//page no 5-25
//Example 5.13
//Given frequency deviation is 10kHz at modulation frequency of 5kHz
fd=10;//in kHz
fm=5;//in kHz
//At the output of first frequency doubler 
fd1=2*fd;
disp(+'kHz',fd1,'Frequency deviation at the output of first frequency multiplier is');
fd2=2*fd1;
disp(+'kHz',fd2,'Frequency deviation at the output of second frequency multiplier is');
beta1=fd2/fm;
disp(beta1,'Modulation index is');
//Separation between adjacent side frequencies is equal to the moulating frequency i.e. 5kHz
