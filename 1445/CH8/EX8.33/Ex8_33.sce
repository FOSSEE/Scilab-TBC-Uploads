//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 33

disp("CHAPTER 8");
disp("EXAMPLE 33");

//230 V DC series motor
//VARIABLE INITIALIZATION
v_t=230;                       //in Volts
N1=1500;                       //in rpm
I_a1=20;                       //in Amperes
r_a=0.3;                       //armature resistance in Ohms
r_se=0.2;                      //series field resistance in Ohms

//SOLUTION

//solution (a)
//for series motors, phi dir prop Ia
// therefore, Te dir prop Ia^2
// at starting Eb=0 and Vt= Ia1.(r_a+r_se+r_ext)
//rearranging for r_ext, we get
// r_ext = (Vt-Ia1.(r_a+r_se))/ Ia1
E_b=0;                         //back emf at starting
nr1=v_t-I_a1*(r_a+r_se);       //value of numerator in the expression for r_ext
r_ext=nr1/I_a1;
disp(sprintf("(a) At starting, the resistance that must be added is %.0f Ω",r_ext));

//solution (b)
//Ia2=Ia1=20 A
//as phi dir prop Ia, we get 
//Eb2/Eb1 = phi2.n2/ phi1. N1 = Ia2.N2/Ia1.N1
//=> Eb2/Eb1=N2/N1  as Ia2=Ia1               (eq 1)
I_a2=I_a1;
N2=1000;
ratio=N2/N1;
// now, we know that Eb1=Vt-Ia1.(r_a+r_se) and 
// Eb2 = Vt - Ia2.(r_a+r_se+r_ext)
//substituting values of Eb1 and Eb2 in eq 1 above, we get
//n2/n1 = (Vt - Ia2.(r_a+r_se+r_ext))/ (Vt-Ia1.(r_a+r_se))
//since ia1=Ia2 (rated torque)
//we get 
//r_ext = (N2/N1).(v_t-I_a1*(r_a+r_se))/Ia2 -(v_t-I_a2*(r_a+r_se))/Ia2
//
nr2=v_t-I_a2*(r_a+r_se);
r_ext=((ratio*nr1)-nr2)/(-I_a2);
disp(sprintf("(b) At 1000 rpm, the resistance that must be added is %.3f Ω",r_ext));

//END
