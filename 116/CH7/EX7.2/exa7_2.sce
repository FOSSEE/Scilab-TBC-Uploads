
//Caption:Program to determine relative accuracy of maintaining a mutual slip rate ojective of one slip in 20hrs

//Example 7.2
 
//Page 350
 
disp('The slip rate objective implies that thee frame rate produced by one clock can be different than the frame rate produced by the other clock by no more then')
 
dF=(1/20*60*60)

dF=[1/(20*60*60)]
 
disp('Since there are 8000 frame per second, the relative accuracy is determined as')

ans=[dF/8000]
 
//Result
 
//Hence the clock must be accurate to 1.7 parts in 10^9.