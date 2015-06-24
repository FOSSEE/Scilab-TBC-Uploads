//Page Number: 6.18
//Example 6.14
clc;
//Given
p=0.1;
q=0.2;
Pm0=0.5;
Pr1bym0=p;
Pr0bym1=q;

//(a) Find Pr0 and Pr1

Pm1=1-Pm0;
Pr0bym0=1-Pr1bym0;
Pr1bym1=1-Pr0bym1;

//By formula
//P(r0)=(P(r0/m0)*P(m0))+(P(r0/m1)*P(m1);
//P(r1)=(P(r1/m0)*P(m0))+(P(r1/m1)*P(m1);

Pr0=(Pr0bym0*Pm0)+(Pr0bym1*Pm1);
Pr1=(Pr1bym0*Pm0)+(Pr1bym1*Pm1);
disp(Pr0,'P(r0):');
disp(Pr1,'P(r1):');

//(b)P(m0/r0)
//Using Bayes Rule
//P(m0/r0)=(P(m0)*P(r0/m0)/P(r0))
Pm0byr0=(Pm0*Pr0bym0)/Pr0;
disp(Pm0byr0,'P(m0/r0):');

//(c)P(m1/r1)
//Using Bayes Rule
//P(m1/r1)=(P(m1)*P(r1/m1)/P(r1))
Pm1byr1=(Pm1*Pr1bym1)/Pr1;
disp(Pm1byr1,'P(m1/r1):');

//(d)Probabilty error
//As Pe=(P(r1/m0)*P(m0))+(P(r0/m1)*P(m1))
Pe=(Pr1bym0*Pm0)+(Pr0bym1*Pm1);
disp(Pe,'Probability error:');

//(e)Probabilty that is transmitted correctly
//As Pc=(P(r0/m0)*P(m0))+(Pr1bym1*Pm1)

Pc=(Pr0bym0*Pm0)+(Pr1bym1*Pm1);
disp(Pc,'Probabilty that is transmitted correctly:');


