clc
clear
//INPUT DATA
f=150 //frequency 
v=320 //speed of sound
ul=11 //speed with which listener approaches
us=7 //speed of source
//calculation
fa=f*v/(v-us)//doppler effect
fa1=(v+ul)*f/(v)//doppler effect
fa2=(v+ul)*f/(v-us)//doppler effect
//output
printf("frequency when source moves at 7ms^-1 %3.3f Hz",fa)

printf("\n frequency when listener moves at 11ms^-1 %3.3f Hz",fa1)
printf("\n frequency when source moves at 7ms^-1 and listener at 11ms^-1 %3.3f Hz",fa2)
