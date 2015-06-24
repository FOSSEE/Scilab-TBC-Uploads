//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 45

disp("CHAPTER 2");
disp("EXAMPLE 45");

//VARIABLE INITIALIZATION
L=1.405;                        //inductance in Henry
r=40;                           //resistance in Ohms
C=20/(10^6);                    //capacitance in Farad
v=100;                          //voltage in Volts

//SOLUTION
//resonant frequency f=1/2.pi.sqrt (L.C)
f0=1/(2*%pi*sqrt(L*C));
disp(sprintf("The frequency at which the circuit resonates is %d Hz",f0));

I0=v/r;
disp(sprintf("The current drawn from the supply is %.1f A",I0));

xl0=2*%pi*f0*L; 
z0=sqrt((r^2)+(xl0^2));
vl0=I0*z0;
disp(sprintf("The voltage across the coil is %.1f V",vl0));

xc0=1/(2*%pi*f0*C);
disp(sprintf("The capcitative reactance is %.1f Ω",xc0));

Q0=(2*%pi*f0*L)/r;
disp(sprintf("The quality factor is %.3f", Q0));

bw=r/L;
disp(sprintf("The bandwidth is %.3f Hz",bw));

//END

