//Given that
Ep = 938.3  //in Mev
Epi = 135.0  //in Mev
Epip = 139.6  //in Mev

//Sample Problem 45-3
pt = mopen('Example45_3_result.txt', 'wt')
mfprintf(pt, '**Sample Problem 45-3**\n')
Q = Ep - Epi - Epip
if (Q > 0) then
    mfprintf(pt, 'The proton can decay according to given scheme')
else
    mfprintf(pt, 'The proton cannot decay according to the given scheme')
end
mclose(pt)