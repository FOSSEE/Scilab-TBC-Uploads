clc;
//Example 1.17
//Page no 31



//solution



ft=2+((2-1)/10)+([2-1]/100);//Noise factor

disp(ft,"Ft = ")

disp("Thus, the total noise figure is");

nft=10*log10(ft);

disp('dB',nft,"NFt = ")
