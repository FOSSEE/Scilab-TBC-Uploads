// Calculating possible phase angles
clc;
disp ('if spot generating pattern moves in the clockwise direction')
Y1=0;
Y2=5;
PA=asind(Y1/Y2);
disp(PA,'phase angle (degree)')
Y1=2.5;
Y2=5;
PA=asind(Y1/Y2);
disp(PA,'phase angle (degree)')
Y1=3.5;
Y2=5;
PA=asind(Y1/Y2);
disp(PA,'phase angle (degree)')
Y1=2.5;
Y2=5;
PA=180-[asind(Y1/Y2)];
disp(PA,'phase angle (degree)')

