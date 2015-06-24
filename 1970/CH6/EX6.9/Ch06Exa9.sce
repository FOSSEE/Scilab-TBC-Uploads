// Scilab code Exa6.9: : Page-243(2011)
clc; clear;
M = rand(4,2);
M(1,1) = 7.0182*931.5;    // Mass of lithium, MeV
M(1,2) = 7.0192*931.5;    // Mass of beryllium, MeV
M(2,1) = 13.0076*931.5;    // Mass of carbon, MeV
M(2,2) = 13.0100*931.5;    // Mass of nitrogen, MeV
M(3,1) = 19.0045*931.5;    // Mass of fluorine, MeV
M(3,2) = 19.0080*931.5;    // Mass of neon, MeV
M(4,1) = 33.9983*931.5;    // Mass of phosphorous, MeV
M(4,2) = 33.9987*931.5;    // Mass of sulphur, MeV
j = 1; 
// Check the stability !!!!
for i = 1:4
    if round (M(i,j+1)-M(i,j)) == 1 then
        printf("\n From pair a :")
        printf("\n         Be(4,7) is unstable");
      elseif round (M(i,j+1)-M(i,j)) ==  2 then
           printf("\n From pair b :")
            printf("\n         N(7,13) is unstable");
      elseif round (M(i,j+1)-M(i,j)) == 3 then
            printf("\n From pair c :")
            printf("\n         Ne(10,19) is unstable");
      elseif round (M(i,j+1)-M(i,j)) == 0 then
             printf("\n From pair d :")
            printf("\n         P(15,34) is unstable");
    end 
end

// Result
// 
// From pair a :
//         Be(4,7) is unstable
// From pair b :
//         N(7,13) is unstable
// From pair c :
//         Ne(10,19) is unstable
// From pair d :
//         P(15,34) is unstable 