//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 6

disp("CHAPTER 7");
disp("EXAMPLE 6");

//2200/20V 50Hz single phase transformer
//VARIABLE INITIALIZATION
v1=2200;                           //primary voltage in Volts
v2=220;                            //secondary voltage in Volts
I=0.6;                             //exciting current in Amperes
p_c=361;                           //core loss in Watts
I2=60;                             //load current in Amperes
pf=0.8;                            //power factor

//SOLUTION

//solution (a)
//core loss components
I1=p_c/v1;                         //vertical component of I0
I_phi=sqrt((I^2)-(I1^2));          //horizontal component of I0
disp(sprintf("(a) The core loss component is %.3f A",I1));
disp(sprintf("And the magnetising component is %.3f A",I_phi));

//solution (b)
//I1.N1=I2.N2
I1_dash=(v2/v1)*I2;
theta=acos(pf);
I1_x=I1_dash*sin(theta)+I_phi;     //horizontal component of I0
I1_y=I1_dash*pf+I1;                //vertical component of I0
I1_res=sqrt((I1_x^2)+(I1_y^2));    //primary current
pf_p=I1_y/I1_res;                  //primary power factor
disp(sprintf("(b) The primary current is %.3f A",I1_res));
disp(sprintf("And the power factor is %.3f A",pf_p));

//END

