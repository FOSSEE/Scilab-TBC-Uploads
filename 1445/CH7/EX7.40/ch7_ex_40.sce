//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 40

disp("CHAPTER 7");
disp("EXAMPLE 40");

//VARIABLE INITIALIZATION
loss=50;                       //core loss in Watts
I0=2;                          //no load current in Amperes
v0=220;                        //induced emf in Volts 
                             
//SOLUTION
pf=loss/(v0*I0);
I_c=I0*pf;                     //core loss component
I_phi=I0*sin(acos(pf));        //magnetizing component
disp(sprintf("The magnetizing component, I_c= %f A, is plotted along x-axis",I_phi));
disp(sprintf("& the core loss component, I_Φ= %f A, is plotted along y-axis",I_c));

//END  

