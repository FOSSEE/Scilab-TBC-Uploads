// Exa 9.3
// To calculate final phase for the pi/4-DQPSK modulation method.

clc;
clear all;

B=['00','10','01','11','01','00','11','10','10','01','01','00'];//Given Bit stream

//solution
disp("Phase transition table for pi/4-DQPSK Modulation is given as   ")
disp(" By Referring Table 9.1 on page No 266 i.e");
disp("Symbol    Phase transition")
disp("00     =>    45°");
disp("01     =>   135°"); 
disp("10     =>   -45°");
disp("11     =>  -135°");
disp("");
disp("sym      Dell phi(k)   Phi(k)")
//BitStream='001001110100111010010100';

phase=0; //Taking initial phase as zero
for i=1:12

   
    if(B(i)=='00')
      phase=phase+45;  
      printf(' %s          45          %d \n',B(i),phase);
    end

    if(B(i)=='01')
        phase=phase+135;
       printf(' %s         135          %d \n',B(i),phase);
    end
    if(B(i)=='10')
        phase=phase-45;
       printf(' %s         -45          %d \n',B(i),phase);
    end
    if(B(i)=='11')
        phase=phase-135;
       printf(' %s        -135          %d \n',B(i),phase);
   
end
end
disp("");
printf('final phase for the pi/4-DQPSK modulation method for given bitstream is %d degree\n',phase);
