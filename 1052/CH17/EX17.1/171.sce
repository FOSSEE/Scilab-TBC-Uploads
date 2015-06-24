clc;
//Example 17.1
//page no 201
printf("Example 17.1 page no 201\n\n");
//fan are operating for transporting gas
//two fans fan(a)and fan(b)
D_a=46//diameter of blade of fan (a)
rpm_a=1575//operating speed of fan(a)
D_b=42//diameter of blade of fan(b)
rpm_b=1625//operating speed of fan(b)
h_p_a=47.5//power requirement of fan (a)
h_p_b=(rpm_b^3/rpm_a^3)*(D_b/D_a)^5*h_p_a//power requirement of fan(b)
printf("\n power requirement h_p_b=%f bhp",h_p_b);
