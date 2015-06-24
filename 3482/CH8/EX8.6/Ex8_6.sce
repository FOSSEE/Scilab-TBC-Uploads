clc;
clear all
//Page 423
r=1//in in
us=0.20;// Coeffiecient of static friction between shaft and pully

//Vertical Force required to raise load
rf=r*us;//in, Perpendicular distance from the center Of pully to line of action 
//summing moment about B
P1=(2.20*500)/1.8//lb , downward Force required to raise load
printf("Force required to raise load is %f lb in downward direction\n",P1);

//Vertcal Force required to hold load

//summing moment about C
P=(1.80*500)/2.20//lb , downward Force required to hold load
printf("Force required to hold load is %.0f lb in downward direction\n",P);

//Horizontal force P to start raising the load
OE=rf;//mm,
OD=sqrt(2)*2;//in, pythagorus theorm
theta=asin(OE/OD);//rad, 

// from force triangle
P=500*cotd(40.9);//lb, Horizontal force P to start raising the load
printf("Horizontal force P required to start raising the load is %.0f lb\n",P);


