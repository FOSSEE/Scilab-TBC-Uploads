//Example 8.2 //POWER GAIN AND RESULTANTT POWER GAIN
clc;
clear;
g1=30;//ABSOLUTE GAIN FOR EACH STAGE
N=5;// no. of stages
Pdb=10*(log10(g1));//power gain in db
Ndb= Pdb*N;//power gai of 5 stages in db
Nfb=10;//NEGATIVE FEEDBACK IN DB
Rpg=Ndb-Nfb;//RESULTANT POWER GAIN IN db
disp(Ndb,"power gain in db")
disp(Rpg,"resultant power gain in db")
