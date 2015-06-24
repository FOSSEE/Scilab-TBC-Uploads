clc;
close();
clear();
//page no 248
//prob no. 7.17
//All frequencies in kHz
fci=100;    //basic center frequency
fco=100000;  //output center frequency
delta_f=(3000/3072)*0.025;   //maximum frequency deviation at modulator
W=15;
D=delta_f/W;
Bt=2*W;  
table_row1=[fci delta_f D Bt];  //At point A
function [table]=table(table_row,multiplier)
   table= [table_row(1:3)*multiplier ,table_row(4)]
    
endfunction
table_row2=[table(table_row1,4)];   //at point B
table_row3=[table(table_row2,4)];   //at point C
table_row4=[table(table_row3,4)];   //at point D

function [table1]=table1(table_row,multiplier)
   table1(1:3)= [table_row(1:3)*multiplier];
    Bt=2*(table1(2)+W);  //Applying carsons rule Bt=2*(delta_f+W)
   table1(4)= [Bt];
    
endfunction
table_row5=[table1(table_row4,3)];   //at point E    ,carsons rule applied from here
table_row6=[(fco/16) table_row5(2:4)];   //at point F  ,center frequency after mixer
table_row7=[table1(table_row6,4)];   //at point G
table_row8=[table1(table_row7,4)];   //at point H
table_row9=table_row8;               //at point I
disp('Point    fc      delta_f     D           Bt');
function display(Point,t_row)
    mprintf(" %c    %8.0i",Point,t_row(1));
    for i=2:4
   mprintf("    %3.4f",t_row(i));
end    
mprintf("\n")
endfunction
display('A',table_row1());
display('B',table_row2());
display('C',table_row3());
display('D',table_row4());
display('E',table_row5());
display('F',table_row6());
display('G',table_row7());
display('H',table_row8());
display('I',table_row9());
