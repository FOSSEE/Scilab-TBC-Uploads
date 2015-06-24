clc;clear;
//Example 2.13

//given values
Plamp=80;
N=30;//no of lamps
t=12;
y=250;//days in a year
UC=0.07;//unit cost in USD

//calculation
LP=Plamp * N/1000;//Lighting power in kW
OpHrs=t*y;//Operating hours
LE=LP * OpHrs;//Lighting energy in kW
LC=LE*UC;//Lighting cost
disp(LC ,'the annual energy cost in USD is ')
