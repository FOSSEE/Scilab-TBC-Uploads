//Example 12.2
//Find the probability of the problem.
disp('The sample space in this case is:-');
disp('(1,1) (1,2) (1,3) (1,4) (1,5) (1,6)');
disp('(2,1) (2,2) (3,3) (4,4) (5,5) (6,6)');
disp('(3,1) (2,2) (3,3) (4,4) (5,5) (6,6)');
disp('(4,1) (2,2) (3,3) (4,4) (5,5) (6,6)');
disp('(5,1) (2,2) (3,3) (4,4) (5,5) (6,6)');
disp('(6,1) (2,2) (3,3) (4,4) (5,5) (6,6)');
disp('Implies that N=36');
disp('Let A be the event of sum 7' );
disp('A={1,6} (2,5) (3,4) (4,3) (5,2) (6,1)} i.e n(A)=6' );
p_a=6/36;
disp(p_a,'Hence the probability of getting a sum 7 is p(A)=6/36=' );
disp('Let B be the event of sum 11' );
disp('A={5,6} (6,5) } i.e n(B)=2' );
p_b=2/36;
disp(p_b,'Hence the probability of getting a sum 2 is P(B)=2/36=' );
disp('Let C be the event of sum 7 or 11' );
disp('Probabilty of getting a sum of 7 or 11 ,P(C)=P(A)+P(B)' );
p_c=p_a+p_b;
disp(p_c,'Hence the probability of getting a sum 7 or 11 is P(C)=' );
disp('Let D be the event of sum 3' );
disp('A={1,2} (2,1)} i.e n(A)=2' );
p_d=2/36;
disp(p_d,'Hence the probability of getting a sum 3 is P(D)=2/36=' );
disp('Let E be the event of sum 2 or 12' );
disp('Probabilty of getting a sum of 2 or 12 ,P(E)=P(sum of 2)+P(sum of 12)' );
disp('P(sum of 2)=1/36  P(sum of 12)=1/36')
p_e=2/36;
disp(p_e,'Hence the probability of getting a sum of 2 or 12 is P(E)=' );
disp('Let F be the event of sum 2 or 3 0r 12' );
disp('Probabilty of getting a sum of 2 or 3 or 12 ,P(F)=P(D)+P(E)' );
p_f=p_d+p_e;
disp(p_f,'Hence the probability of getting a sum 2 or 3 or 12 is P(F)=' );
