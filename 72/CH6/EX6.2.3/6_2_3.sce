//CAPTION: CutOff_frequency_of_a_MESFET

//chapter_no.-6,  page_no.-247
//Example_no.6-2-3

clc;

//(a) Calculate_the_cut-off_frequency

gm=.05;
Cgs=.60*(10^-12);

fco=(gm)/(2*%pi*Cgs);
fco=fco/(10^9);

disp(fco,'the_cut-off_frequency(in Ghz)is');

//(b)Calculate_the_maximum_operating_frequency


Rd=450;
Rs=2.5;
Rg=3;
Ri=2.5;

fmax=(fco/2)*((Rd/(Rs+Rg+Ri))^(1/2));

disp(fmax,'the_maximum_operating_frequency(in Ghz)is');

