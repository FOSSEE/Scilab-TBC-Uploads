p=1/5;  //probability of the man hitting a target
q=1-1/5; //probability of the man not hitting the target
n=100;  //number of times the man fires
e=n*p;   
disp(e,'expected number of times the man will hit the target')
r=sqrt(n*p*q);  
disp(r,'Standard deviation')

p=1/2;  //probability of guessing the correct answer in a five question true-false exam
n=5;   //number of questions in the exam
g=n*p;
disp(g,'expected number of correct answers in the exam')