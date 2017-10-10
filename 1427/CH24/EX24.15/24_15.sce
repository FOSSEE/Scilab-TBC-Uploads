//ques-24.15
//Calculating amount of a substance extracted by ether
clc
w1=16;//weight of solute in 1L aqueous solution (in g)
w2=12;//amount extracted by 100 mL ether (in g)
w3=w1-w2;//amount left in 1L (in g)
K=(w2/100)/(w3/1000);//partition coefficient
//K = (x/100)/((4-x)/1000)
x=(w3*K)/(10*w3);
printf("The amount of substance extracted by 100mL ether during 2nd extraction is %d g.",x);
