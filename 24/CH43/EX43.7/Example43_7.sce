//Given that
M_P = 31.97391  //in u
M_S = 31.97207 //in u
uCsqure = 931.5  //in Mev

//Sample Problem 43-7
txt = mopen('Example43_7_result.txt','wt')
mfprintf(txt, '**Sample Problem 43-7**\n')
Q = -(M_S - M_P)*uCsqure
mfprintf(txt, 'The disintegration energy for the beta decay of Phosphorus is %fMev', Q)
mclose(txt)