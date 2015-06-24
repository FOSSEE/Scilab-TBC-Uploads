//Example 1.8
clc
disp("For the above circuit voltage gain with feedback is given as")
disp("A_f = A1[A2/1+A2*B2] / 1+A1[A2/1+A2B2]B1")
disp("(i)  deltaA_f = | A1[A2/1+A2*B2]/1+A1[A2/1+A2B2]B1 - |A1-deltaA_i|[A2/1+A2*B2]/1+|A1-deltaA_i|[A2/1+A2B2]B1 |")
disp("(ii)  deltaA_f = | A1[A2/1+A2*B2]/1+A1[A2/1+A2B2]B1 - A1[|A2-deltaA2|/1+|A2-deltaA2|*B2]/1+A1[|A2-deltaA2|/1+|A2-deltaA2|B2]B1 |")
