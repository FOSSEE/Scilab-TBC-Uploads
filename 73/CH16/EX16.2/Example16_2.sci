//Chapter 16_Bipolar and MOS Digital Gate Circuits
//Caption : Noise Margin
//Example 16.2: An RTL gate has the worst case voltages listed below:
// Temp(degree C)            Voh(V)         Vih(V)        Vil(V)       Vol(V)
//     -55                   1.014           1.01         0.718        0.710
//      25                   0.844           0.815        0.565        0.300
//      125                  0.673           0.67         0.325        0.320
//Calculte the worst case NMl and NMh noise margins.
//Solution:
clear;
clc;
T=[-55;25;125];// temperatures in degree celsius given in table
for j=1:3,
if j==1 then
    disp('Noise margins for T=-55 degree celsius are:')
    NMl=0.718-0.710;// since NMl=Vil-Vol
    NMh=1.014-1.01;// since NMh=Vih-Voh
    disp('Volt',NMl,'lower limit of noise margin at -55 degree celsius is:')
    disp('volt',NMh,'upper limit of noise limit at -55 degree celsius is:')
elseif j==2 then
    disp('Noise margin for T=25 degree celsius are:')
    NMl=0.565-0.300;
    NMh=0.844-0.815;
    disp('Volt',NMl,'lower limit of noise margin at 25 degree celsius is:')
    disp('Volt',NMh,'upper limit of noise margin at 25 degree celsius is:')
elseif j==3 then
    disp('Noise margin for T=125 degree celsius are:')
    NMl=0.325-0.320;
    NMh=0.673-0.670;
    disp('Volt',NMl,'lower limit of noise margin at 125 degree celsius is:')
    disp('Volt',NMh,'uppwr limit of noise margin at 125 degree celsius is:')
end
end