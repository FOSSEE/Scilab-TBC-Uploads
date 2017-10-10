//example 9.3(a)//
clc
//clears the screen//
clear
//clears all existing variables//
// ff = input ( ' Enter the no of flip-flops ' ) ;
ff =4;
//given input//
k=2^ff;
if(k ==2) then // output d i s p l a y
printf ( 'With given flipflop we can only count 2 ,we can have a modulus 2 counter' );
else
printf ( 'With given number of flip-flops the counter will have a natural count of %d ' ,k);
printf ( 'We can thus construct any counter that has a modulus between 2 and %d' ,k )
disp('in our given question we are given count till 1011 so, it will be mod 12 counter')
end