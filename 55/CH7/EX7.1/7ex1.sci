S=[1,2,3,4,5,6];       //sample space for the rolling of a die
A=[2,4,6];             //event that an even number occurs
B=[1,3,5];            //event that an odd number occurs
C=[2,3,5];           //event that a prime number occurs
disp(union(A,C),'sample space for the event that an even or a prime number occurs')
disp(intersect(B,C),'sample space for the event that an odd prime number occurs')
disp(setdiff(S,C),'sample space for the event that a prime number does not occur')     //It is the complement of the set C.
intersect(A,B)     //It is a null set or null vector since there can't occur an even and an odd number simultaneously
 
H=0;             //"head" face of a coin
T=1;            //"tail" face of a coin
S=["000","001","010","011","100","101","110","111"] ;    //sample space for the toss of a coin three times
A=["000","001","100"];      //event that two more or more heads appear consecutively
B=["000","111"];           //event that all tosses are the same
disp(intersect(A,B),'sample space for the event in which only heads appear')
 
disp('Experiment:tossing a coin until a head appears and then counting the number of times the coin is tossed')
S=[1,2,3,4,5,%inf]       //The sample space has infinite elements in it
disp("Since every positive integer is an element of S,the sample space is infinite")