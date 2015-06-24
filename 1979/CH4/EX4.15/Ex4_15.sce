//chapter-4 page 152 example 4.15
//==============================================================================
clc;
clear;

wcTE10=16;//Critical wavelength of TE10 mode in cm
wcTM11=7.16;//Critical wavelength of TM11 mode in cm
wcTM21=5.6;//Critical wavelength of TM21 mode in cm
disp('For any wave to be propagated, the condition to be met is wc>wo');
wo1=10;//Free space wavelength in cm
wo2=5;//Free space wavelength in cm
disp('Critical wavelength of TE10 mode in cm is');
disp(wcTE10);
disp('Critical wavelength of TM11 mode in cm is');
disp(wcTM11);
disp('Critical wavelength of TM21 mode in cm is');
disp(wcTM21);
disp('For wo1=10cm,The mode that propagates only TE10.Because wcTE10>wo1 and all other modes that is TM11 TM21 donot propagate');
disp('For wo2=5cm');
disp('wcTE10>wo2, so TE10 mode propagates');
disp('wcTM11>wo2, so TE11 mode propagates');
disp('wcTE21>wo2, so TE21 mode propagates');
