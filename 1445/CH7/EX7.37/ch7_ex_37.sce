//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 37

disp("CHAPTER 7");
disp("EXAMPLE 37");

//VARIABLE INITIALIZATION
va=500000;                                  //apparent power
v1=3300;                                    //primary voltage in Volts
v2=500;                                     //secondary voltage in Volts
f=50;
//loads
pf=1;
eff=0.97;                                   // at 3/4 full load at unity pf
pf2=0.8;                                        
//
//SOLUTION  
I1=va/v1;
loss=(1-eff)*va*(3/4)*pf/eff;              //=Pc+Pcu losses at 3/4 load
//since the eff value is maximum, Pcu=Pc; therefore, 2*Pc=loss
Pc=loss/2;
//(3/4)^2*Pcu=Pc;  
f=(3/4)^2;                                 //3/4 load
//Pcu=Pc/f
Pcu=Pc/f;
//disp(sprintf("The Pc is %f W",Pc));
//disp(sprintf("The Pcu is %f W",Pcu));
//
R_e1=Pcu/I1^2;
disp(sprintf("The value of Re1 is %f W",R_e1));
//10% impedance
Z_e1=v1*0.1/I1;
X_e1=sqrt(Z_e1^2-R_e1^2);
phi=acos(0.8);
%reg=(I1*R_e1*cos(phi)+I1*X_e1*sin(phi))*100/v1;
disp(sprintf("The percent regulation at full load 0.8 pf is %f W",%reg));
disp(" "); 
// 
//END
