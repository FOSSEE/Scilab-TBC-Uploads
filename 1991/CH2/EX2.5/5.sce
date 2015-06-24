clc
clear
//input
vc=25 //velocity of car
va=10 //velocity of wind
va1=15 //velocity of wind westward
//calculation
v1=vc+va//resultant velocity for a tail of wind
v2=vc-va//when wind blows westward at 10 m/s^resultant velocity 
v3=vc-va1//resultant velocity when wind blows westward at 15m/s^2
//output
printf("1. the resultant velocity of wind is %3.3f ms^-1 eastwards ",v1)
printf("\n2. the resultant velocity of wind is %3.3f ms^-1 westwards ",v2)
printf("\n3. the resultant velocity of wind is %3.3f  ms^-1westwards ",v3)
