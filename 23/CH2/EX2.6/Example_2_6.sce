clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction

//Example 2.6
//Caption : Program to find the work done by gas

//Given values
P=14;//Pressure=14bar
V1=0.03;//Initial volume=0.03m^3
V2=0.06;//Final Volume
//Process is isothermal
//(a)-To find the work done by gas in moving the External force
//(b)-To find the work done by gas if external force is suddenly reduced to half its initial value

//Solution
//(a)
K=P*V1*(10^5);//J
W1=approx(-K*integrate('1/V','V',0.03,0.06),0);//J
P2=K/V2;//Final Pressure(Pa)
P2=P2/(10^5);//bar
disp('J',W1,'(a)The work done by gas in moving the External Force is')

//(b)
W2=-P2*(10^5)*integrate('1','V',0.03,0.06)
n=approx((W2/W1)*100,1);//Efficiency
disp('J',W2,'(b)The work done by gas if external force is reduced to half is')
disp('%',n,'Hence the efficiency is')

//End