clc;
E1=230; // primary rating of transformer 1 and transformer 2
E2=400; // secondary rating of transformer 1
e2=410; // secondary rating of transformer 2
iv=25; // current feeded by voltage regulator to h v series winding
pc=200; // core loss in each transformer
r=1 // assuming resistance of transformer to be 1
x=3*r // as per question leakage reactance is thrice of resistance 
il1=(iv*E2)/E1; // primary current of transformer 1
il2=(iv*e2)/E1; // primary current of transformer 2
pf=r/sqrt(r^2+x^2); // power factor during short circuit
// As per the circuit diagram given in question, by Kirchoffs current law current through current coil of wattmeter W1 is given by
I=il2-il1;
// 2*core loss is the reading of wattmeter 2
W=E1*I*pf; // reading of wattmeter 1 connected on l v side
// in circuit diagram if terminal a is connected to c and terminal b is connected to d the current I and Io (no load current) flow in the same direction of current coil of Wattmeter.Hence its reading is increased to 
Wt=2*pc+W; 
printf('reading of wattmeter as per the connection described is %f W\n',Wt);
// in circuit diagram if terminal c is connected to b and terminal d is connected to a the current I and Io (no load current) flow in the opposite direction through current coil of Wattmeter.Hence its reading is decreased to 
Wt=2*pc-W;
printf('reading of wattmeter as per the connection described is %f W',Wt);

 
