disp("A fair coin is tossed six times");
x=[0,1,2,3,4,5,6];   //number of heads which can occur
p=[1/64,6/64,15/64,20/64,15/64,6/64,1/64];  //probability of occurring of heads where 1/64 is probability for occurrence of a single head,6/64 that of occurrence of two heads and so on.
r=0;
for i=1:7;
r = r + (x(i)*p(i));
end
disp(r,'mean or expected number of heads are')
 
disp("X is a random variable which gives possible number of defective items in a sample of size 3");
//Box contains 12 items of which three are defective
x=[0,1,2,3];   //possible number of defective items in a smaple of size 3
p=[84/220,108/220,27/220,1/220];  //probability of occurrence of each number in x respectively where 84/220 is the probability for getting no defective item,108/220 is that of getting 1 defective item and so on.
 r=0;
for i=1:4;
r = r + (x(i)*p(i));
end
disp(r,'expected number of defective items in a sample of size 3 are')
 
Ph1=1/2;    //probability of winning the race by first horse
Ph2=1/3;    //probability of winning the race by second horse
Ph3=1/6;    //probability of winning the race by third horse
//X is the payoff function for the winning horse
X1=2;      //X pays $2 as first horse wins the rac
X2=6;      //X pays $6 as second horse wins the race
X3=9;      //X pays $9 as third horse wins the race
E=X1*Ph1+X2*Ph2+X3*Ph3;   
disp(E,'expected pay off for the race is')