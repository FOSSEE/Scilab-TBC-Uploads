//CHAPTER 3- THREE-PHASE A.C. CIRCUITS
//Example 8

disp("CHAPTER 3");
disp("EXAMPLE 8");

//VARIABLE INITIALIZATION
v_ph=230;                               //in Volts and in polar form 
z=8+(%i*6);                             //in Ohms and in rectanglar form

//SOLUTION
//converting z from rectangular form to polar form
z_mag=sqrt(real(z)^2+imag(z)^2);  
phi=atan(imag(z)/real(z));              //atan() gives output in radians

I_ph=v_ph/z_mag;
I_l=sqrt(3)*I_ph;
disp(sprintf("The line current is %.2f A",I_l));

pow_fact=cos(phi);
disp(sprintf("The power factor is %.2f",pow_fact));

p=sqrt(3)*v_ph*I_l*pow_fact;           //phase volt=line volt in delta connection(v_l=v_ph)
disp(sprintf("The power is %.2f W",p));

var=sqrt(3)*v_ph*I_l*sin(phi); 
var=var/1000;                          //from VAR to kVAR   
disp(sprintf("The reactive power is %.2f kVAR",var));

va=sqrt(3)*v_ph*I_l;
va=va/1000;                            //from VA to kVA
disp(sprintf("The total volt amperes is %.2f kVA",va));

//END
