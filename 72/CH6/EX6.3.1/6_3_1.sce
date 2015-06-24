//CAPTION: Current_of_a_HEMT
//chapter_no.-6,  page_no.-251
//Example_no.6-3-1
clc;

//Calculate_the_Drain_Current

q=1.60*(10^-19);
n=5.21*(10^15);
W=150*(10^-6);
v=2*(10^5);

Ids=q*n*W*v;
Ids=1000*Ids;
disp(Ids,'the_drain_current_is(mA)');

