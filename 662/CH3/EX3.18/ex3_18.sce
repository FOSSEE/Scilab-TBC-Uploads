                //Example 3_18
                clc
//Use of Logical negation operator

i=int(7);
f=5.5;

v=f>5;
disp(v,"( f > 5 )=");


v = ~(f>5);
disp(v,"(~(f>5) )=");

v= i <= 3;
disp(v,"( i <= 3 )=");

v=~( i <= 3 );
disp(v,"( ~( i <= 3 ) )=");

v=i > ( f + 1);
disp(v,"(i > ( f + 1) )=");

v=~(i > ( f + 1));
disp(v,"(~(i > ( f + 1)))=");
