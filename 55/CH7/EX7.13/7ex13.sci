r=[1,2,3,4,5,6,5,4,3,2,1];  
//number of outcomes whose sum is 2,3,4,5,6,7,8,9,10,11,12 respectively such that there is only 1 outcome i.e (1,1) whose sum is 2,two outcomes (1,2) and (2,1) whose sum is 3 and so on
t=36;                       //total number of elements in the sample space of the experiment of tossing a pair of dice
for i=1:11;
p=r(i)/t;
disp(p)
end
0.0277778             //probability of getting a sum of 2
0.0555556              //probability of getting a sum of 3
0.0833333             //probability of getting a sum of 4
0.1111111            //probability of getting a sum of 5 
0.1388889            //probability of getting a sum of 6
0.1666667           //probability of getting a sum of 7
0.1388889            //probability of getting a sum of 8
0.1111111            //probability of getting a sum of 9
0.0833333            //probability of getting a sum of 10
0.0555556           //probability of getting a sum of 11
0.0277778           //probability of getting a sum of 12
x=[2,3,4,5,6,7,8,9,10,11,12];      //range space of random variable X which assigns to each point in sample space the sum of the numbers 
D=[ 2,3,4,5,6,7,8,9,10,11,12;  0.0277778, 0.0555556 , 0.0833333,  0.1111111, 0.1388889 ,0.1666667,  0.1388889 ,0.1111111, 0.0833333, 0.0555556, 0.0277778];
disp(D,'distribution table of X where first row gives the range space and second row gives the respective probabilities is as follows')