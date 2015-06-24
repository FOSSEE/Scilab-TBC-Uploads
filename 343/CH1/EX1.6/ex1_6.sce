t1=20;               //Assigning values to the parameters
R1=45;
R2=48.5;
alpha0=0.004;
t2=((R2*(1+alpha0*t1))-45)/(alpha0*R1);      //calculating average temperature
disp(t2,"Average temperature of winding at the end of the run when the resistance increases");