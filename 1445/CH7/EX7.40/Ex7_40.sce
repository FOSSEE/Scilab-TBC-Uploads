//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 40

disp("CHAPTER 7");
disp("EXAMPLE 40");

//Given
//transformer on no load has a core loss 50W, draws a current of 2 A (RMS) and induced emf 220 V(RMS)
//VARIABLE INITIALIZATION
loss=50;                       //core loss in Watts
I0=2;                          //no load current in Amperes
v0=220;                        //induced emf in Volts 
                             
//SOLUTION
pf=loss/(v0*I0);
I_c=I0*pf;                     //core loss component
I_phi=I0*sin(acos(pf));        //magnetizing component
disp(sprintf("The magnetizing component, I_c= %.4f A,",I_phi));
disp(sprintf("The core loss component, I_Φ= %.4f A,",I_c));

//END  

