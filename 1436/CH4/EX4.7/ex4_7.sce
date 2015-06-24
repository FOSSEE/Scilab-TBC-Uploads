// Example 4.7, page no-211
clear
clc

//(a)
sg_at_60=1.02
API=(141.5/sg_at_60)-131.5
printf("(a)\nDegrees API = %.2f°API",API)
//(b)
Be=145-145/sg_at_60
printf("\n(b)\nDegrees Baume(heavy) = %.1f°Be",Be)
//(c)
Bk=(sg_at_60-1)*1000
printf("\n(c)\nDegrees Barkometer = %d°Bk",Bk)
//(d)
Q=(sg_at_60-1)*1000
printf("\n(c)\nDegrees Quevenne = %d°Q",Q)
//(e)
Tw=200*(sg_at_60-1.0)
printf("\n(d)\nDegrees Twaddel = %d°Tw",Tw)
