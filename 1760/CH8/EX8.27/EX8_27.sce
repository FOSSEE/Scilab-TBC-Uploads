                  //EXAMPLE 8-27  PG NO-545
R2=0.586;
M.G=1+0.586;           //MID BAND GAIN
R=10^3;
C=0.02*10^-6;
Fc=1/(2*%pi*R*C);                   //Cut OFF Frequency
G.Fc=0.707*M.G;
M.B.O=M.G*1.4;
disp('ii) Cut  off Frequency (Fc) is    =  '+string (Fc) +'   ')
disp('ii) Gain at cutt of frequency (G.Fc) is    =  '+string (G.Fc) +'   ')
disp('ii) Mid band out Put (M.B.O) is    =  '+string (M.B.O) +'  mV ')
