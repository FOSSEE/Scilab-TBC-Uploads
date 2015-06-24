clc
//Example 4.6
//calculate the mass consumed in a nuclear reactor per unit time
//let D=d/dt
DQ=-13*10^8;//J/s
DW=7*10^8;//J/s
//Dm=(DQ-DW)/c^2 where c is velocity of light sice E=mc^2
c=3*10^8;//m/s
c1=3;//velocity of light without power
pow=8//power of 10 in speed of light 
Dm=(DW-DQ)/c/c1//kg/s
printf("the mass consumed in a nuclear reactor per unit time is %f * 10^(-%d) kg/s",Dm,pow);