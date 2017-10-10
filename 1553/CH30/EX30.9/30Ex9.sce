//Chapter 30 Ex 9

clc;
clear;
close;
men=6; mselect=3; ladies=5; lselect=2;    //given
menways=factorial(men)/(factorial(mselect)*factorial(men-mselect));
ladiesway=factorial(ladies)/(factorial(lselect)*factorial(ladies-lselect));
totways=menways*ladiesway;
mprintf("A committee of 5 members consisting of 3 men and 2 ladies selected from 6 men and 5 ladies cen be choosen in %d ways",totways);
