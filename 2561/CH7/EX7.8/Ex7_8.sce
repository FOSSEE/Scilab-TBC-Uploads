//Ex7_8
//refer fig. 7.6(b)
clc
R1=50*10^(3)
disp("R1= "+string(R1)+ " ohm")  // resistance at input terminal of OP-AMP
RF=500*10^(3)
disp("RF= "+string(RF)+ " ohm")  //Feedback resistance
VS=1
disp("VS= "+string(VS)+" volts") // Peak-peak output swing voltage
disp("part(i)")  
disp("A = infinite")// voltage gain
Vo1=-(RF/R1) //Output voltage when gain, A=infinite
disp("Vo1=-(RF/R1)= "+string(Vo1)+" volts")
disp("part(ii)")  
A=50000
disp("A="+string(A)) //  gain of OP-AMP
B=R1/(R1+RF)
disp("B=R1/(R1+RF)= "+string(B)) //Feedback factor
Vo2=-[(RF)*(B*A)]/(R1*(1+A*B))
disp("Vo2=-[(RF)*(B*A)]/(R1*(1+A*B))= "+string(Vo2)+" volts")// output voltage for A=50000
e=-[(Vo2-Vo1)*100]/Vo1
disp("%Error,e= [(Vo2-Vo1)*100]/Vo1="+string(e)+"% ")//  calculation for percentage error in output voltage
disp("part(iii)")  
e=0.01
disp("%Error,e="+string(e)+"% ")//Given percentage error in output voltage
Vo3=-(Vo1-(e*Vo1/100))
disp("Vo3=Vo1-(e*Vo1/100)= "+string(Vo3)+" volts")// output voltage for error 0.01%
x=Vo3*(R1/RF)
A=(x)/[B*(1-x)] //using formulae Vo=-(RF/R1)*[(B*A)/1+A*B)]
disp("A=(Vo*R1)/[B*RF*(1-(Vo*RF/R1))]="+string(A)) // New Required gain for error less than 0.01%

// while solving the problem I have used 'e' for the error as no varriable is given for the same in textbook by author
// in textbook author has used 'Vo' for output voltage in all parts.. but to remove any ambiguity in the programe I have used 'Vo1' 'Vo2' 'Vo3' for part i, ii, iii, respectively
