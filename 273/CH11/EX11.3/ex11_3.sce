clc;clear;
//Example 11.3
//calculation of average absorption coefficient and area

//given values

V=20*15*10;//volume of hall in m^3
t=3.5;//reverberation time of empty hall in sec
t1=2.5;//reduced reverberation time 
k2=.5;//absorption coefficient of curtain cloth
//calculation
a1=.161*V/t;//total absorption of empty hall
k1=a1/(2*(20*15+15*10+20*10));
disp(k1,'the average absorption coefficient is');
a2=.161*V/t1;//total absorption when wall is covered with curtain
a=t1*(a2-a1)/(t1*k2);
disp(a,'area of wall to be covered with curtain(in m^2)is:')