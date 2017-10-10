//Example 14.9//

vm=(1.000-0.733);// volume fractions of matrix //(The values of vm  are taken from table 14.10 and 14.11)
Em=6.9*10^3;//MPa //polymeric matrix modulus
vf=0.733;//volume fractions of fibers // (The values of vf are taken from table 14.10 and 14.11)
Ef=72.4*10^3;//MPa//E- glass -reinforced epoxy
Ec=(vm*Em)+(vf*Ef)
mprintf("Ec = %e MPa",Ec)
//for this case  Ec=56*10^3 MPa or
a=56;//Mpa(The values are from table 14.12)
b=54.9;//(The values  are taken from table 14.12)
e=((a-b)/a)*100
mprintf("\n e = %f percent",e)
mprintf("\n The calculated value comes within 2 percent of the measured value" )
