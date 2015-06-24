//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-6, Example 2, Page 151
//Title: Bubble Size and Rise Velocity in Geldart B Beds
//==========================================================================================================
clear
clc

//INPUT
z=0.5;//Height of bed in m
dt=0.5;//ID of tube in m
rhos=2.6;//Density of catalyst in g/cm^3
dpbar=100;//Averge catalyst diameter in micrometer
umf=0.01;//Velocity at minimum fluidization condition in m/s
uo=0.45;//Superficial velocity in m/s
dor=2;//Diameter of orifice in mm
lor=30;//Pitch of perforated plate in mm
g=9.80;//Acceleration due to gravity in m/s^2
pi=3.142857;

//CALCULATION
//Part(a).Bubble Size
Nor=(2/sqrt(3))*(1/lor^2);
dbo=5.5;

//Method 1.Werther's procedure for finding bubble size
z1=[0;5;10;20;30;50;70];
n=length(z1);
i=1; 
while i<=n
    db(i)=0.853*((1+0.272*(uo-umf)*100)^(1/3))*(1+0.0684*z1(i))^1.21;
    i=i+1;    
end
db1=0.163;//Since bubble size starts at dbo=5.5cm at z=0, we shift the curve accordingly to z=0.5m

//Method 2.Mori and Wen's procedure for finding bubble size
dbm=0.65*((pi/4)*((dt*100)^2)*(uo-umf)*100)^0.4;
db2=dbm-(dbm-dbo)*exp(-0.3^(z/dt));

//Part(b).Bubble Velocity
//Method 1.Procedure using Eqn.(12)
ub1=1.6*((uo-umf)+1.13*db1^0.5)*(dt^1.35)+(0.711*(g*db1)^0.5);

//Method 2.Werther's Procedure
si=0.65;
ub2=si*(uo-umf)+2*(dt^0.5)*(0.711*(g*db1)^0.5);

//Using Eqn.(7) & Eqn.(8)
ubr1=0.711*(g*db1)^0.5;
ubr2=0.711*(g*db2/100)^0.5
ub3=uo-umf+ubr1;
ub4=uo-umf+ubr2;

//OUTPUT
printf('\nBubble Size');
mprintf('\nInitial bubble size from Fig.5.14 for %fm/s = %fcm',uo-umf,dbo);
printf('\n\n\tMethod 1.Werthers procedure for finding bubble size');
printf('\n\t\tHeight of bed(cm)');
printf('\t\t\tBubble size(cm)');
m=length(z1);
j=1;
while j<=m
    mprintf('\n\t\t%f',z1(j));
    mprintf('\t\t\t\t%f',db(j));
    j=j+1;
end
printf('\n\n\tMethod 2.Mori and Wens procedure for finding bubble size');
mprintf('\n\t\tMaximum expected bubble size=%fcm',dbm);
mprintf('\n\t\tBubble size=%fcm',db2);
printf('\nBubble Velocity');
printf('\n\n\tMethod 1.Procedure using Eqn.(12)');
mprintf('\n\t\tBubble velocity=%fm/s',ub1);
printf('\n\n\tMethod 2.Werthers procedure');
mprintf('\n\t\tBubble velocity=%fm/s',ub2);
printf('\nComparing the above results with the expressions of the simple two-phase theory');
printf('\n\tWerthers bubble size');
mprintf('\tBubble rise velocity=%fm/s\tBubble velocity=%fm/s',ubr1,ub3);
printf('\n\tMori & Wens bubble size');
mprintf('\tBubble rise velocity=%fm/s\tBubble velocity=%fm/s',ubr2,ub4);

//====================================END OF PROGRAM ======================================================