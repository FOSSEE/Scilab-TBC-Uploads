disp("A bag contains 12 items of which four are defective.Three items are drawn at random,one after the other");
s=12;   //total itmes in the bag
d=4;  //defective items in the bag
Pf=(s-d)/s ;  //probability that the first item drawn is  non defective
Pe=Pf*[(s-d-1)/(s-1)]*[(s-d-2)/(s-2)];
disp(Pe,'probability that all three items are non defective')
//after the first item is chosen,the second item is to be chosen from 1 less than the original number of items in the box and similarly the number of non defective items gets decreased by 1.Similarly ,for the third draw of item from the box