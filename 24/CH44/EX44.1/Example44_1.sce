//Given that
M_U = 235.0439  //in Atomic mass unit
M_Ce = 139.9054  //in Atomic mass unit
M_Zr = 93.9063  //in Atomic mass unit
M_n = 1.00867  //in Atomic mass unit
uCsqure = 931.5  //in Mev

//Sample Problem 44-1
txt = mopen('Example44_1_result.txt','wt')
mfprintf(txt, '**Sample Problem 44-1**\n')
Q = -((M_Ce + M_Zr + M_n) - M_U) * uCsqure
mfprintf(txt, 'The disintegration energy is %dMev', Q)
mclose(txt)