//Given that
uCsqure = 931.5  //in Mev
M_H = 1.007825  //in Atomic mass unit
M_U  = 238.05079  //in Atomic mass unit
M_Th = 234.04363  //in Atomic mass unit
M_He = 4.00260  //in Atomic mass unit
M_Pa = 237.05121  //in Atomic mass unit

txt = mopen('Example43_6_result.txt','wt')
//Sample Problem 43-6a
mfprintf(txt, '**Sample Problem 43-6a**\n')
Q = (M_U - (M_Th + M_He)) * uCsqure
mfprintf(txt, 'Energy released during alpha decay of uranium is %fMev\n', Q)

//Sample Problem 43-6b
mfprintf(txt, '\n**Sample Problem 43-6b**\n')
Q = (M_U - (M_Pa + M_H)) * uCsqure
if(Q<0) 
    mfprintf(txt, 'It cannot emit a proton spontaneously')
else
    mfprintf(txt, 'It can emit proton spontaneously')
end
mclose(txt)