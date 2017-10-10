clear
//
//The total number of cycles the clock should perform in 24 hours for correct time is
t=24*60*60*50
printf("\n The total number of cycles the clock should perform in 24 hours for correct time is= %0.0f  ",t)
//The number of cycles the clock performs from 8am to 7pm is
n=(6*49.95+5*49.90)*60*60
printf("\n The number of cycles clock performs from 8am to 7pm is= %0.0f  ",n)
//the number of cycles required in remaining 13 hours is t-n that is 2342.88*10**3
a=(2342.88*10**3)/(13*60*60)
printf("\n The desired average frequency for correct time for remaining 13 hours is= %0.5f  ",a)
//The shortfall in number of cycles from 8am to 7pm
s=0.05*6+0.10*5
printf("\n s= %0.3f  ",s)
//The time by which the clock is incorrect at 7pm
time=(0.8*60*60)/50
printf("\n time= %0.5f  ",time)
