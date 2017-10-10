clc;
// 1 and 2 subscripts are used for transformer 1 and transformer 2
// P and S are used for primary and secondary winding
E=230; // Rated primary voltage of both transformer 
disp('case 1'); 
R=0; // load conneted across secondary of transformer 1
// R=0 means winding is short circuited, therefore voltage across S1 is zero, therefore whole voltage is applied across s2 therefore
printf('Reading of voltmeter for R=%f is %f v\n',R,E);
disp('case 2');
R=115; // load conneted across secondary of transformer 1
// A resistance of 115 ohm should cause a current of 1 A because voltage across P1 is 115 v but this means that P1 and P2 carrying 1A current . According to this voltage across P2 is magnetizing impedance of transformer 2 times magnetizing current. But magnetizing impedance is very large, due to this voltage across P2 rises much above 115 v and voltage across P1 falls, due to which magnetizing    current through S1 decreases.
disp('Voltmeter reading is much more than 115 v but less than 230 v. Let it be Vb');
disp('case 3');
R=1000; //  load conneted across secondary of transformer 1
// For R=1000 ohm , current in P1 and S1 are reduced. Hence current in P2 is also reduced. Therefore voltage across P2 is also reduced but still it is more than 115 v
disp('Voltmeter reading is more than 115 v but less than Vb');
disp('case 4');
// for R=infinity S1 is open circuited, therefore voltage across P1=115 v and P2=115 v
disp('Reading of voltmeter is 115 v');

 
