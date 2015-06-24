// Scilab Code Ex7.4: Page-252 (2014)
clc; clear;
n = 3;    // Principal quantum number
Total = 0;
printf("\nn    l    m_l               2(l + 1)");
printf("\n------------------------------------");
for l = 0:1:n-1
    printf("\n%d", n);
    printf("    %d    ", l);
        if l > 0 then
            count = 0;
           for m_l = -l:1:l
              printf("%2d ", m_l); 
              count = count + 1;
           end 
           if  l == 1 then
               printf("      ");
           else
               printf("");
           end
        else
              m_l = 0;
              count = 0;
              printf("%2d             ", m_l); 
              count = count + 1;
        end
        printf("     %d", count);
        Total = Total + count;
end
printf("\n                      Total = %d", Total);

// Result
// n    l    m_l               2(l + 1)
// ------------------------------------
// 3    0     0                  1
// 3    1    -1  0  1            3
// 3    2    -2 -1  0  1  2      5
//                       Total = 9 