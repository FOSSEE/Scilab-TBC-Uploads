
//given
//current gain of transistor A
A=100;
//upper half-power frequency fh
fh=2*(10^6);//in Hz
//closed-loop current gain Acl
Acl=10;
//band width BW
BW=10*(10^6);//in Hz
//gain bandwidth product ABWp
ABWp=Acl*BW;//in Hz
//gain bandwidth product of transistor ABWpt
ABWpt=A*fh;//in Hz
printf("The gain bandwidth product of the transistor is %d*(10^8),which is greater the minimum required i.e. %d*(10^8) and therefore the transistor is suitable\n",ABWpt/(10^8),ABWp/(10^8))
disp('Acl=A/(1+A*B)==&gt; B =(1/A)*(A/Acl-1)\n');
B =(1/A)*(A/Acl-1);
printf("Required value of B is %1.2f",B);