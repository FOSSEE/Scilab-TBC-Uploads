s=%s;
p=s^3+7*s^2+25*s+39
// to check if the roots lie left of s=-1
// substitute s=s-1
p=(s-1)^3+7*(s-1)^2+25*(s-1)+20
r=routh_t(p)
printf("All the signs of elements first column are positive hence the roots lie left of s=-1")
