// given data
clc
n1=1 // 1st january
n2=182 // july 1

phi=34.083  //  latitude in degree

delta1=23.45*sin((%pi/180)*(360.0*(284.0+n1)/365.0)) // in degree
delta2=23.45*sin(((%pi/180)*360.0*(284.0+n2)/365.0)) // in degree

td1=(2.0/15)*(acos((tan(phi)/tan(delta1)))*180/%pi) // daylight hours for january 1
td2=(2.0/15)*(acos((tan(phi)/tan(delta2)))*180/%pi) // daylight hours for july 1

printf ("daylight hours for january 1 are %.2f hours",td1)
printf (" \n daylight hours for july 1 are %.2f hours",td2)

// the answers are slightly different in textbook due to approximation while here ansers are precise
