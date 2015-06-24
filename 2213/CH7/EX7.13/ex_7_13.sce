//Example 7.13: maximum power and total distance
clc;
clear;
close;
format('v',5)
//given data :
w=250;//in tonnes
we=(1+(10/100))*w;//efective weight in tonnes
r=5*9.81;//in N/tonne
G=1;//
t1=30;//in sec
t2=70;// in sec
alpha=2;//kmphps
V1=alpha*(t1);// in km/h
ft=(277.8*we*alpha)+(98.1*G*w)+(w*r);//in newtons
po=((ft*V1)/3600);//maximum power output in kW
n=0.97;//efficiency
pi=po/n;//in kW
G=1;
bc=((98.1+r))/(277.8*1.1);//in kmphps
V2=V1-(bc*t2);//km/hr
beta1=3;//retardation
t3=V2/beta1;//in seconds
S=(((V1*t1)/7200)+(((V1+V2)*t2)/7200)+((V2*t3)/7200));
disp(round(pi),"maximum power developed by traction motor is (kW)")
disp(S,"total distance travelled by train in km is")

