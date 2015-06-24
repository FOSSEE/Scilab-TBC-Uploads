// Scilab Code Ex7.9: Page-259 (2014)
clc; clear;
n = 4;    // Principal quantum number
l = 2;    // For 4d-state
printf("\nn    l         m_l      m_s");
printf("\n-------------------------------");
     count = 0;
     for m_l = -l:1:l
         if (m_l == 0) then
             printf("\n%d", n);
             printf("    %d    ", l);
             printf("     %2d", m_l); 
             printf("    +1/2, -1/2");
         else    
             printf("\n               %2d", m_l); 
             printf("    +1/2, -1/2");             
         end
         count = count + 2;
     end 
printf("\nTotal No. of different states for 4d level of atomic hydrogen = %d", count);

// Result
// n    l         m_l      m_s
// -------------------------------
//                -2    +1/2, -1/2
//                -1    +1/2, -1/2
// 4    2          0    +1/2, -1/2
//                 1    +1/2, -1/2
//                 2    +1/2, -1/2
// Total No. of different states for 4d level of atomic hydrogen = 10 