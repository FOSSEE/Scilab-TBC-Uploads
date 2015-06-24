//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 20

disp("CHAPTER 8");
disp("EXAMPLE 20");

//250 V DC shunt motor
//VARIABLE INITIALIZATION
v_t=250;                    //in Volts
I_a1=20;                    //in Amperes
N1=1000;                    //in rpm
r_a=0.5;                    //in Ohms
drop=1;                     //brush contact drop in Volts
ratio=1.5;                  //N2:N1=1.5
phi1=1;                     //it is an assumption

//SOLUTION
// equations have been renumbered differently than in the text book for better clarity
// Torque is constant
// T dir prop phi.Ia
// phi1.ia1=phi2.Ia2                         (eq 1)
//similarly, E dir prop phi.N
//E1/E2 = phi1.n1/phi2.n2
E_1=v_t-(I_a1*r_a)-(2*drop);
//speed raised by 50%. new speed 1.5 times the old one i.e n2=1.5N1
//
//E1/E2 = Phi1.N1/phi2.N2                    (eq 2)
//from eq 2
//=>E1/E2=Phi1/1.5.phi2 (substituting N2=1.5N1)  (eq 3) 
//=>phi2/phi1=E2/1.5.E1                       (eq 4)
//from eq 1
//phi2/ph1=Ia2/Ia2=20/Ia2 -------------------(eq 5)
//substituting value of phi2/phi1 in eq 4 we get
//20/Ia2=E2/1.5E1
//=>E1/E2=Ia2/30                             (eq 6)
//further we know that
//E2=V-Ia2.Ra -2.drop where V=v_t=250, ra=R_a=0.5 and drop=1
//=>E2=(V-2.drop) -Ra.Ia2                    (eq 7)
//substituting value of E2 in eq 6, we get
//E1/[(V-2.drop)-ra.Ia2] = Ia2/30            (eq 8)
// we get quadratic equation
//Setting in an quadratic equation of type a.X^2 + b.X + c = 0
//The constants are as given below:
a=1;                    // coefficient of Ia2^2
b=-496;                 //coefficient of Ia2, = (V-2.drop).Ra=(v_t-2.drop).R_a
c=14280;                // constant = E_1*30
D=b^2-(4*a*c);
x1=(-b+sqrt(D))/(2*a);
x2=(-b-sqrt(D))/(2*a); 
if(x1<40)
I_a2=x1;
else if(x2<40)
I_a2=x2;
end;
phi2=(I_a1/I_a2)*phi1;
phi=(1-phi2)*100;
disp(sprintf("The flux to be reduced is %.1f %% of the main flux",phi));

//END
