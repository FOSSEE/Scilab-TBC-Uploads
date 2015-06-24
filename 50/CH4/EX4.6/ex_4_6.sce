//  example :4.6
//  caption : obtain the legrange linear interpolating polinomial


// 1)  obtain the legrange linear interpolating polinomial in the interval [1,3] and obtain approximate value of f(1.5),f(2.5);
x0=1;x1=2;x2=3;f0=.8415;f1=.9093;f2=.1411;

P13=legrangeinterpol (x0,x2,f0,f2)              //in the range [1 ,3]


P12=legrangeinterpol (x0,x1,f0,f1)                // in the range [1,2]

P23=legrangeinterpol (x1,x2,f1,f2)                 // inthe range [2,3]

// from P23 we find that ; where as exact value is sin(2.5)=0.5985; 
disp('P(1.5)=0.8754');
disp('exact value of sin(1.5)=.9975')
disp('P(2.5)=0.5252');