//Example 11 Page No: 1.86
//given
inb2=90e-9;//A
inb1=70e-9;//A
a=1e5;//gain
//determine input offset current
i1=(inb2+inb1)/2;
i2=inb2-inb1;
v1=((inb2-inb1)*1000)*a;
disp('Input base current = '+string(i1*10^9)+' nA');
disp('Input offset current = '+string(i2*10^9)+' nA');
disp('Output offset voltage = '+string(v1)+' V');



