clc;clear;
//Example 7.2

//given data
Qsink=2000;
Qsource=-Qsink;
Tsource=800;

//calculations
//part - a
Tsink=500;
dSsource=Qsource/Tsource;
dSsink=Qsink/Tsink;
Sgena=dSsource+dSsink;
disp(Sgena,'entropy generated in part a in kJ/K is ');
//part - b
Tsink=750;
dSsource=Qsource/Tsource;
dSsink=Qsink/Tsink;
Sgenb=dSsource+dSsink;
disp(Sgenb,'entropy generated in part b in kJ/K is ');
if(Sgena>Sgenb)
    disp('part a is more irreversible');
elseif(Sgena == Sgenb)
    disp('heat transfer is equally irreversible');
else
    disp('part b is more irreversible');
end,
