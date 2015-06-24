//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 22

disp("CHAPTER 8");
disp("EXAMPLE 22");

//230 V 600 rpm shunt motor
//VARIABLE INITIALIZATION
N1=600;                       //in rpm
v=230;                        //in Volts
I_l1=50;                      //line current in Amperes
r_a=0.4;                      //armature resistance in Ohms
r_f=104.5;                    //field resistance in Ohms
drop=2;                       //brush drop in Volts

//SOLUTION

//solution (i)
I_l2=5;                       // no load current
I_a1=I_l1-(v/r_f);            // armature current
E_b1=v-(I_a1*r_a)-drop;       // back emf
I_a2=I_l2-(v/r_f);
E_b2=v-(I_a2*r_a)-drop; 
N2=(E_b2/E_b1)*N1;            // speed at no load
N2=round(N2);
disp(sprintf("(i) The speed at no load is %d rpm",N2));

//solution (ii)
I_l2=50;
N2=500;
E_b2=(N2/N1)*E_b1; 
dif=v-drop;                   //difference
I_a2=I_l2-(v/r_f); 
r_se=((dif-E_b2)/I_a2)-r_a;
disp(sprintf("(ii) The additional resistance is %.3f Ω",r_se));

//solution (iii)
//Eb1/Eb2 = phi2.N2/Phi1.N1
phi1=1;                       //it is an assumption
I_a3=30;
N2=750;
E_b3=v-(I_a3*r_a)-drop;
phi2=(E_b3/E_b1)*(N1/N2)*phi1;
red=((1-phi2)*100*phi1)/phi1;
disp(sprintf("(iii) The percentage reduction of flux per pole is %.1f %%",red));

//END  

