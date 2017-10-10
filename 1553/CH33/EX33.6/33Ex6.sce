//Chapter 33 Ex 6

clc;
clear;
close;
BD=165; Sum=1650;    //given
// As ratio of TD as to BG is 10:1 Thus BD =11 as BD=TD+BG
TD=(10/11)*BD;
BG=BD-TD;
mprintf("THe true discount is Rs.%d \n The bankers gain is Rs.%d",TD,BG);
