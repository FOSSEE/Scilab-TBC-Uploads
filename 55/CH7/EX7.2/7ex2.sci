disp('Experiment:three coins are tossed and the number of heads are observed')
S=[0,1,2,3];   //the sample space for the experiment where 0 implies no heads,1 implies only one head out of the three coins and so on
disp("the probability space is as follows ")  
P0=1/8;  //probability of getting no head on any of the coins i.e TTT
P1=3/8;  //probability of getting only one head on any of the coins, out of the three coins i.e HTT,THT,TTH
P2=3/8;  //probability of getting two heads, out of the three coins i.e THH,HTH,HHT
P3=1/8;   //probability of getting all the three heads i.e HHH
disp("A is the event that atleast one head appears and B is the event that all heads or all tails appear ")
A=[1,2,3];   // HHH,HHT,HTH,HTT,THH,THT,TTH
B=[0,3];    //HHH,TTT
PA=P1+P2+P3;   
disp(PA,'probability of occurrence of event A')
PB=P0+P3;     
disp(PB,'probability of occurrence of event B') 