//caption:design of non inverting amplifier
//to design a non inverting amplifier
//mid-band gain Av
Av=100;
//input impedance Zin
Zin=1000000;//in ohms
//cut-off frequencies fl1 and fl2
fl1=10;//in Hz
fl2=10;//in Hz
//From problem it follows
R3=Zin;
disp('fl2=1/(2*%pi*C2*R3)');
disp('C2=1/(2*%pi*fl2*R3)');
C2=1/(2*%pi*fl2*R3);
disp('Av=1+(R2/R1)');
disp('Bias compensation can also be obtained by taking R2=R3=1MHz');
R2=R3;
disp('R1=1/(Av-1)*R2');
R1=1/(Av-1)*R2;
printf('R1=%1.1f Kohms, preferred and standard value is 10Kohms\n',R1/1000);
R=R1;
R1=10000;//in ohms
disp('fl1=1/(2*%pi*C1*R3)');
disp('C1=1/(2*%pi*fl1*R3)');
C1=1/(2*%pi*fl1*R1);
printf('RESULTS: Design summary\n');
printf('R1=%1.1f Kohms, preferred and standard value is 10Kohms\n',R/1000);
printf('R2=R3=%d Mohm\n',R3/10**6);//divided by 10^6 to convert to Mohms
printf('C1=%1.2f uF but standard and preferred value is 2.2 uF\n',C1*(10**6));
printf('C2=%2.1f nF but standard and preferred value is 22 uF\n',C2*(10**9));

