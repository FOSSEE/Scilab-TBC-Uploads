//To determine watt VAr and VA demands
//Page 85
clc;
clear;

Kh=1.2;
CTR=80;
PTR=20;
//Revolutions of the disk in a watthour meter for 1 and 2 readings respectively
Kr1=20;
Kr2=30;
//Revolutions of the disk in a VArhour meter for 1 and 2 readings respectively
Kr3=10;
Kr4=20
//Time interval for revoltion of disks in watthour meter for 1 and 2 readings respectively
T1=50;
T2=60;
//Time interval for revoltion of disks in VArhour meter for 1 and 2 readings respectively
T3=50;
T4=60;

deff('y=Id(a,b)','y=((3.6*Kh*a*CTR*PTR)/b)'); //Function to calculate the instaneous demand

//Instantaneous kilowatt demands for readings 1 and 2
D1=Id(Kr1,T1);
D2=Id(Kr2,T2);

//Instantaneous kilovar deamnds for readings 1 and 2
D3=Id(Kr3,T3);
D4=Id(Kr4,T4);

Davp=(D1+D2)/2; //Average kilowatt demand
Davq=(D3+D4)/2; //Average kilovar demand

Dav=sqrt((Davp^2)+(Davq^2)); //Average kilovoltampere demand

printf('a) The instantaneous kilowatt hour demands for readings 1 and 2 are %g kW and %g kW respectively\n',D1,D2)
printf(' b) The average kilowatt demand is %g kW\n',Davp)
printf(' c) The instantaneous kilovar hour demands for readings 1 and 2 are %g kVAr and %g kVAr respectively\n',D3,D4)
printf(' d) The average kilovar demand is %g kVAr\n',Davq)
printf(' e) The average kilovoltampere demand is %g kVA\n',Dav)
