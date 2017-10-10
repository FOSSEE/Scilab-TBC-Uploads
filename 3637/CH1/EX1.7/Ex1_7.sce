//Example 7 Page No: 1.86
//given
sr=35e6;//volt/sec
vsat=15;//volt
//determine time to change from 0 to 15V
c=100e-12;//farad
i=150e-6;//A
w=vsat/sr;
w1=i/c;format(6);
disp('Time to change from 0 to 15 = '+string(w*1e6)+' μsec');
disp('Slew rate = '+string(w1/1000000)+' volt/μsec');
