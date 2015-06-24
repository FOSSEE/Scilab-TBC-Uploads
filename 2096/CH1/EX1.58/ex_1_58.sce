//Example 1.58://precision index and false alarms
clc;
clear;
y=0.675;//
x=4.8;//
SD= x/y;//STANDARD DEVIATION
h=(1/(sqrt(2)*SD));//precision index
x1=100-88;//
y=x1/SD;//
py=0.45;//probablity
nm=30*4;//no. of measurements in the month of november
fa=nm*0.05;//expected no. of false alarms
rfa=fa/2;//reduced no. of false alarms
pfa=(rfa/nm)*100;//probablity of false alarms
py1=0.5-0.025;//probablity of data lie in the tolerant band
SD1=(100-88)/1.96;//
h1=((1/(sqrt(2)*SD1)));//PRCESION INDEX
disp(h,"precision index in part a")
disp(fa,"expected no. of false alarms")
disp(h1,"precision index in part b is")
