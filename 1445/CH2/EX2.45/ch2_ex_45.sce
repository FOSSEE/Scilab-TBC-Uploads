//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 45

disp("CHAPTER 2");
disp("EXAMPLE 45");

//VARIABLE INITIALIZATION
L=1.405;                        //in Henry
r=40;                           //in Ohms
c=20/(10^6);                    //in Farad
v=100;                          //in Volts

//SOLUTION
f0=1/(2*%pi*sqrt(L*c));
disp(sprintf("The frequency at which the circuit resonates is %d Hz",f0));

I0=v/r;
disp(sprintf("The current drawn from the supply is %f A",I0));

xl0=2*%pi*f0*L; 
z0=sqrt((r^2)+(xl0^2));
vl0=I0*z0;
disp(sprintf("The voltage across the coil is %f V",vl0));

xc0=1/(2*%pi*f0*c);
disp(sprintf("The capcitative reactance is %f Ω",xc0));

Q0=(2*%pi*f0*L)/r;
disp(sprintf("The quality factor is %f", Q0));

bw=r/L;
disp(sprintf("The bandwidth is %f Hz",bw));

//END

