
//Example 4.12.a: BHP of the motor
clc;
clear;
close;n=80;//efficiency
l=7.5;//load in tonnes
h=135;//height in meters
c=0.5;//cge weight in tonnes
b=3;//balance weight in tonnes
td=90;//time in seconds
onet=1000;// in kg
onehp=746;//watt
wl=l+c-b;//weight lifted during upward journey in tonnes
wld=b-c;//weight lifted during downward journey in tonnes
wdu=(wl*10^3*h*60)/td;//work done by the lift per minute during upward journey
wdd=(wld*10^3*h*60)/td;//work done by the lift per minute during downward journey
mou=wdu/4500;// in hp
miu=(mou*100*746)/(n*1000);// input of motor in kW
mod=wdd/4500;// in hp
mid=(mod*100*746)/(n*1000);// input of motor in kW
disp(mou,"BHP of the motor in upward journey in hp")
disp(mod,"BHP of the motor in downward journey in hp")
