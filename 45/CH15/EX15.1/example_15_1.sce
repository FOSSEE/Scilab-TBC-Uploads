//example 15.1
//timing for a six digit display 
clc;
clear;
//f=input('Enter the repetition rate in Hz :');
//d= input('Enter the length of display :');
f=125; // given inputs 
d=6;
format('v',5); //changing the precision of the calculation 
k=1000/f;
l=1000/(f*d);//making neccesary calculations  
m=k-l;
printf('All digits must be serviced once every %f milliseconds \n',k);
printf('Each digit will be ON for : %f milliseconds\n',l) ;
printf('and OFF for : %f milliseconds',m); //displaying results

 
