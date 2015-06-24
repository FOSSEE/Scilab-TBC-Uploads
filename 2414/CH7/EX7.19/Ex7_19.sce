clc;
close();
clear();
//page no 261
//prob no. 7.19
//All frequencies in Hz
D=5;     //deviation ratio
fc=[400 560 730 960];    //Center frequency
delta_f=0.075 .*fc;     //frequency deviation
W=delta_f ./D ;         //modulating frequency
Bt=2 .*(delta_f + W);  //Bandwidth
fl=fc - Bt/2;          //Lower frequency
fh=fc + Bt/2;          //Higher frequency
figure
x=[301:1100];
y=[1.5];
y=[y zeros(302:fl(1))]
for i=1:3
y=[y ones(fl(i):fh(i))];
y=[y zeros(fh(i)+1:fl(i+1))];
end
y=[y ones(fl(4):fh(4))];
y=[y zeros(fh(4):1100)];
plot(x,y);
xtitle('Composite baseband spectrum','f,Hz');
delta_frt=D*1046;
Brt=2*(delta_frt+1046);
disp('Hz',Brt,'(b)  The RF transmission bandwidth is ');
