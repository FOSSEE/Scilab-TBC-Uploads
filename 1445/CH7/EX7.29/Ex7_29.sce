//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 29

disp("CHAPTER 7");
disp("EXAMPLE 29");

//20kVA 4000/1000 V single phase transformer
//VARIABLE INITIALIZATION
va=200000;                             //apparent power
v1=4000;                              //primary voltage in Volts
v2=1000;                               //secondary voltage in Volts
f=50;                                   // frequency in Hz
//loads
pf=1;                                   //power factor is unity
eff=0.97;                               // at full load and at 60% of full load
nlpf=0.5;                               //no load pf
lpf=0.8                                 //lagging pf
reg=0.05;                               //%regulation at 0.8 pf
//
//SOLUTION  
loss=(1-eff)*va/eff;                    //=Pc+Pcu losses
//simultaneous equation to be solved
//eq 1: Pc+Pcu=loss;
//fractipon of copper/ ohmic losses
f=(0.6)^2;                              // 60% of full load
//the 2nd equation is Pc+f*Pcu=loss
//now the matrix
M=[1,1;1,f];
A=[loss,loss*0.6];
Mi=inv(M);
Ans=A*inv(M);
Pc=Ans(1,1);
Pcu=Ans(1,2);
//disp(sprintf("The Pc is %f",Pc));
//disp(sprintf("The Pcu is %f",Pcu));
//LV side
R_e2=Pcu/va;
//from %reg find X_e2
phi=acos(lpf);
X_e2=(reg-R_e2*cos(phi))/sin(phi);
//in oms units
R_e2=R_e2*v2^2/va;                       // in ohms
X_e2=X_e2*v2^2/va;                       // in ohms
disp(sprintf("The Re2 is %.3f Ω",R_e2));
disp(sprintf("The Xe2 is %.3f Ω",X_e2));
//
Rc=v2^2/Pc; 
Ie2=Pc/(v2*0.25);
Ic=Pc/v2;
Iphi=sqrt(Ie2^2-Ic^2);
Xphi=v2/Iphi;
disp(sprintf("The Rc is %.2f Ω",Rc));
disp(sprintf("The Ie2 is %.3f A",Ie2)); 
disp(sprintf("The Ic is %.3f A",Ic));
disp(sprintf("The Iphi is %.4f A",Iphi)); 
disp(sprintf("The Xphi is %.2f Ω",Xphi)); 
disp(" "); 
// 
//END
