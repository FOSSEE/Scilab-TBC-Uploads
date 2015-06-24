clc;
//Example 6.2
//Page no 230 


//solution

f0=30; //MHz
f1=30.005 //MHz
flo=20; //MHz
fbfo=10; //MHz
d=(0.001/100); //%

//(a)


disp("(a)The IF output from the RF mixer difference between the received signal frequency and the RF local oscillator frequency,");

fu=f0-flo;
fl=f1-flo;

disp('MHz',fl,"MHz to",fu,"Fif = ");


fm1=fu-fbfo;
fm2=fl-fbfo;

disp('kHz',(fm2*(10^3)),"kHz to",fm1,"fm = ");

//(b)

disp("(b)A 0.001% drift would cause a decrease in the RF local oscillator frequency of ");

df=d*flo;

disp('Hz',(df*(10^6)),"df = ");


fl=(flo-df);
fi=f0-fl;
ff=f1-fl;

disp('MHz',ff,"MHz to",fi,"Fif = ");


fm3=fi-fbfo;
fm4=ff-fbfo;

disp('Hz',(fm4*(10^6)),"Hz to",(fm3*(10^6)),"fm = ");


