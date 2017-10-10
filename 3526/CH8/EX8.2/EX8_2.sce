clc;funcprot(0);//EXAMPLE 8.2
//page 222
// Initialisation of Variables
tf=0.1;.......//Thickness of cooper to produce in cm
%CW1=40;.......//cold work to produce a tensile strengthof 65,000 psi
%CW2=45;.......//cold work to produce a tensile strengthof 60,000 psi
//CALCULATIONS
Tmax=(tf/(1-(%CW1/100)));.........//Maximum thicknessproduced in step1 in cm
Tmin=(tf/(1-(%CW2/100)));.........//Minimum thicknessproduced in step2 in cm
disp(Tmax,"Maximum thicknessproduced  in cm:")
disp(Tmin,"Minimum thicknessproduced  in cm:")
