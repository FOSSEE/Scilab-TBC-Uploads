clc
//Chapter8
//Example6.2, page no 262
//Given
fmax=1600e3,fmin=500e3,IF=465e3
//i
fo1max=fmax+IF,fo1min=fmin+IF
C1max_C1min=(fo1max/fo1min)^2
//ii
fo2max=fmax-IF,fo2min=fmin-IF
C2max_C2min=(fo2max/fo2min)^2
mprintf('a)\nTuning capacitor range is: %f\nb)\nTuning capacitor range is: %d',C1max_C1min,C2max_C2min)
