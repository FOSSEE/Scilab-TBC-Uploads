
 
//EXAMPLE 7.5 (a)
 
 
 disp(" Experiment: A die is tossed and the outcomes are observed");
 

 disp("To find: probability (PM) of an event that one of the dice is 2 if the sum is 6");  
   
 
E=["(1,5)","(2,4)","(3,3)","(4,2)","(5,1)"]    //event that the sum of the two numbers on the two dice is 6
 
 
A=["(2,1)","(2,2)","(2,3)","(2,4)","(2,5)","(2,6)","(1,2)","(3,2)","(4,2)","(5,2)","(6,2)"]  //event that 2 appears on atleast one die
 

B= intersect(A,E)   //possible combination of numbers on two die such that their sum is 6 and 2 appears atleast on one die
 
 
PM=2/5  //since E has 5 elements and B has 2 elements
  
 



//EXAMPLE 7.5(b)
 
disp("A couple has two children");

 
b=1;   //boy child
 
g=2;   //girl child

S=[11,12,21,22] ;    //sample space where 11 implies both children being boys,12 implies first child being a boy and the second child being a girl                            and so on
 
disp("To find: probability(PM) that both children are boys  ");
    
 

//7.5(b).i
 
L=S(:,1:3)     //reduced sample space if it is known that one of the children is a boy
  
 
PM=1/length(L)
  
 
//7.5(b).ii
 
R=S(:,1:2)    //reduced sample space if it is known that the older child is a boy
  
 
PM=1/length(R)
  
 


