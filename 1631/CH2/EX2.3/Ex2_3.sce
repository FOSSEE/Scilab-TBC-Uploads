//Caption: Probability
//Example 2.3
//page no 43
//find the probability 
clc;
clear;
total_cards=52;
ways_of_drawingtwocards=52*51/(2*1);//ways of drawing 2cards from a deck of 52cards
diamonds=13;
Hearts=13;
waysof_diamonds_Hearts=diamonds*Hearts;//ways of drawing a Diamond and a Heart
probability=waysof_diamonds_Hearts/ways_of_drawingtwocards;

disp(probability,"Probability that one card is Diamond and Othercard is Heart");
