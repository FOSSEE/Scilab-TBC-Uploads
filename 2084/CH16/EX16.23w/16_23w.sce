//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 16.23w
//calculation of the frequency of train whistle heard by the person standing on the road perpendicular to the track

//given data
v=340//speed(in m/s) of the sound in the air
d1=300//distance(in m) of the train from the crossing
u=120*10^3/(60*60)//speed(in m/s) of the train
nu=640//frequency(in Hz) of the whistle
d2=400//distance(in m) of the person from the crossing ,perpendicular to the track

//calculation
theta=acosd(d1/sqrt(d1^2+d2^2))//pythagoras theorem
nudash=(v/(v-(u*cosd(theta))))*nu//frequency of the whistle heard

printf('the frequency of train whistle heard by the person standing on the road perpendicular to the track is %d Hz',nudash)
