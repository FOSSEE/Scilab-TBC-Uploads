clear;
clc;
disp("Example 8.2");
function[]=stringtoint()
    num= ascii("scilab");
    disp("displayin ascii codes of alphabets=");
    disp(num);
    // converting strings into unique non-negative integer and suming these unique integers.
    z=sum(num);
    disp("displayin sum of these integers");
    disp(z);
endfunction
stringtoint()