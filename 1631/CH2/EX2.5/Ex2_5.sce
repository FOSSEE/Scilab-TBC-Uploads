
//Caption: Probability
//Example 2.5
//page no 44
//find the probability 
clc;
clear;
whiteballs=5;
redballs=3;
balckballs=2;
totalballs=whiteballs+redballs+balckballs;
pw=whiteballs/totalballs;//probability of gettingfirst ball is white
pr=redballs/(totalballs-1);//probability of getting second ball is red
pb=balckballs/(totalballs-2);//probability of getting third ball is black

possbilecases=6;
probabalityof_eachcase=pw*pr*pb;
totalprobability=6*probabalityof_eachcase;//required probability
disp(totalprobability,"Probability of balls will be in different colours");
