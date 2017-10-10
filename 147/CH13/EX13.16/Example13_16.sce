//Transformer frequency fr, Source frequency fs
close();
clear;
clc;
Pr = 500;//VA
ft = 25;//Hz
fs = 60;
V1 = 120;
V2 = 30;
//Maximum permissible primary voltage 'V1max'
V1max = fs/ft*V1;
V2r = fs/ft*V2;
I2r = Pr/V2;
mprintf('Maximum primary voltage = %0.0f V\nrated V2 = %0.0f V\nrated I2 = %0.2f A',V1max,V2r,I2r);