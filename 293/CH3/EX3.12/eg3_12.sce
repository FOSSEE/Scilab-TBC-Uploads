//a
// circuit parameters
E1 = 120; 
R1 = 40;
R2 = 20; 
R3 = 60;

Voc = E1*R2/(R2 + R1); //open circuit voltage appearing at terminal 1
Ri = R3 + (R1*R2/(R1 + R2)); //equivalent resistance looking into the     network from terminal pair 01

function I = Il(Rl)
    I = Voc/(Ri + Rl) //current through Rl
endfunction

Il1 = Il(10); //Rl = 10 ohm 
Il2 = Il(50); //Rl = 50 ohm 
Il3 = Il(200); //Rl = 200 ohm

disp("a")
disp(Il1,"Il (Rl = 10ohm) = ")
disp(Il2,"Il (Rl = 50ohm) = ")
disp(Il3,"Il (Rl = 200ohm) = ")

//b
//for maximum power Rl = Ri
Rl = Ri;
Plmax = (Voc/(2*Ri))^2 * Ri ; //maximum power to Rl
disp("b")
disp(Plmax,"maximum power to Rl(in Watt) = ")