//Example 10 Page No: 1.86
//given
inb1=22e-6;//A
inb2=26e-6;//A
//determine input offset current input base current
i1=inb2-inb1;
i2=(inb2+inb1)/2;
format(10);
disp('Input offset current = '+string(i1*10^6)+' μA');
disp('Input base current = '+string(i2*10^6)+' μA');

