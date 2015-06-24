//CHAPTER 3- THREE-PHASE A.C. CIRCUITS
//Example 4

disp("CHAPTER 3");
disp("EXAMPLE 4");

//VARIABLE INITIALIZATION
v_l=866;                              //line voltage in Volts
z_delta=177-(%i*246);                 //impedance of delta connected load in Ohms
z_wire=1+(%i*2);                      //impedance of each wire of the line in Ohms

//SOLUTION
v_ph=v_l/sqrt(3);                     //phase current = (line current)/sqrt(3) for star connection
z_star=z_delta/3;
z=z_wire + z_star;
I=v_ph/z;                             //I_na in rectangular form
//I_na, I_nb and I_nc are same in magnitude and are the line currents for delta connection or vice-versa
//function is not used to covert quantities in rectangular form to polar form
//I_na
I_na=sqrt((real(I))^2+(imag(I))^2);   //I_na from rectangular to polar form  
a=atan(imag(I)/real(I));              //angle in radians
a=a*(180/%pi);                        //radians to degrees
//I_nb
I_na=sqrt((real(I))^2+(imag(I))^2);
b=a-120;                              //lags by 120 degrees
//I_nc
I_na=sqrt((real(I))^2+(imag(I))^2);
c=a-240;                              // lags by another 120 degrees ie.,240 degrees
disp(sprintf("The line currents are %.3f A (%.2f degrees), %.3f A (%.2f degrees) and %.3f A (%.2f degrees)",I_na,a,I_na,b,I_na,c));


//line current lags phase current by 30 degrees, hence (-30)
//I_AB
I_AB=I_na/sqrt(3);
a1=a-(-30); 
//I_BC
I_BC=I_na/sqrt(3);
b1=b-(-30);
//I_AC
I_AC=I_na/sqrt(3);
c1=c-(-30);
disp(sprintf("The phase currents are %.3f A (%.2f degrees), %.3f A (%.2f degrees) and %.3f A (%.2f degrees)",I_AB,a1,I_BC,b1,I_AC,c1));

//converting z_delta from polar form to rectangular form
z=sqrt((real(z_delta))^2+(imag(z_delta))^2);
angle=atan(imag(z_delta)/real(z_delta));
angle=angle*(180/%pi); 

//line voltages for load or phase voltages for the delta load-
//v_AB
v_AB=I_AB*z;
a2=a1+angle;
//v_B
v_BC=I_BC*z;
b2=b1+angle;
//v_AC
v_AC=I_AC*z;
c2=c1+angle;
disp(sprintf("The phase voltages for the delta load are %.3f A (%.2f degrees),  %.3f A (%.2f degrees) and %.3f A (%.2f degrees)",v_AB,a2,v_BC,b2,v_AC,c2));   

p_AB=(I_AB^2)*real(z_delta); 
p_load=3*p_AB;   
disp(sprintf("The power absorbed by the load is %.2f W",p_load));
p_l=3*(I_na^2)*real(z_wire);
disp(sprintf("The power dissipated by the line is %.2f W",p_l));
p=p_load+p_l;
disp(sprintf("The total power supplied by 3-ϕ source is %.2f W",p));

//Answers may be slightly different due to precision of floating point numbers

//END
